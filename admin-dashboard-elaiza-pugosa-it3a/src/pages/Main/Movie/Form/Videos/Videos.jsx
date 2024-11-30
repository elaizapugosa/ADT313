import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Videos.css';

function Videos() {
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const user = JSON.parse(localStorage.getItem('user'));
  const [videoInformation, setVideoInformation] = useState([]);
  const [data, setData] = useState([]);
  const [selectedVideo, setSelectedVideo] = useState([]);
  const [state, setState] = useState('base');

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    if (state === 'add') {
      setData((prevData) => ({
        ...prevData,
        [name]: value,
      }));
    } else {
      setSelectedVideo((prevData) => ({
        ...prevData,
        [name]: value,
      }));
    }
  };

  useEffect(() => {
    axios({
      method: 'get',
      url: `/videos`,
      headers: {
        Accept: 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
    }).then((response) => {
      setVideoInformation(response.data);
      console.log(response.data);
    });
  }, []);

  const handleSave = async () => {
    const formData = new FormData();
    formData.append('userId', user.userId);
    formData.append('movieId', tmdbId);
    formData.append('title', data.title);
    formData.append('description', data.description);
    formData.append('url', data.url);

    axios({
      method: 'post',
      url: '/videos',
      data: formData,
      headers: {
        'Content-Type': 'multipart/form-data',
        Authorization: `Bearer ${accessToken}`,
      },
    }).then((response) => {
      console.log(response.data);
    });
  };

  const handleUpdate = async () => {
    const updateData = {
      id: selectedVideo.id,
      userId: selectedVideo.userId,
      movieId: tmdbId,
      title: selectedVideo.title,
      description: selectedVideo.description,
      url: selectedVideo.url,
    };

    axios({
      method: 'patch',
      url: `/videos/${selectedVideo.id}`,
      data: updateData,
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
    });
  };

  const handleDelete = (id) => {
    const isConfirmed = window.confirm('Are you sure you want to delete this video?');
    if (isConfirmed) {
      axios({
        method: 'delete',
        url: `/videos/${id}`,
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
      }).then((response) => {
        console.log('Video Deleted');
      });
    }
  };

  const renderForm = () => {
    if (state === 'add') {
      return (
        <div>
          <form>
            <label>
              Video URL
              <input type="text" name="url" value={data.url} onChange={handleOnChange} />
            </label>
            <label>
              Title
              <input type="text" name="title" value={data.title} onChange={handleOnChange} />
            </label>
            <label>
              Description
              <input type="text" name="description" value={data.description} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleSave}>Save</button>
        </div>
      );
    } else if (state === 'update') {
      return (
        <div>
          <form>
            <label>
              Video URL
              <input type="text" name="url" value={selectedVideo.url} onChange={handleOnChange} />
            </label>
            <label>
              Title
              <input type="text" name="title" value={selectedVideo.title} onChange={handleOnChange} />
            </label>
            <label>
              Description
              <input type="text" name="description" value={selectedVideo.description} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleUpdate}>Save</button>
        </div>
      );
    }
  };

  return (
    <div className="videos-page">
      <button
        onClick={() => (state === 'base' ? setState('add') : setState('base'))}
        className="toggle-form-button"
      >
        {state === 'base' ? 'Add Video' : 'Back to List'}
      </button>

      {renderForm()}

      <div className="video-list">
        {videoInformation.map((video) => (
          video.movieId === parseInt(tmdbId) && (
            <div className="video-item" key={video.id}>
              <div className="video-header">
                <iframe
                  src={video.url}
                  title={video.title}
                  className="video-iframe"
                  frameBorder="0"
                ></iframe>
                <div className="video-info">
                  <h2>{video.title}</h2>
                  <p>{video.description}</p>
                </div>
              </div>
              <div className="video-actions">
                <button
                  onClick={() => {
                    setSelectedVideo(video);
                    setState('update');
                  }}
                  className="edit-button"
                >
                  <i className="fas fa-edit"></i>
                </button>
                <button
                  onClick={() => handleDelete(video.id)}
                  className="delete-button"
                >
                  <i className="fas fa-trash"></i>
                </button>
              </div>
            </div>
          )
        ))}
      </div>
    </div>
  );
}

export default Videos;
