import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Videos.css';

function Videos() {
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const user = JSON.parse(localStorage.getItem('user'));
  const [videoInformation, setVideoInformation] = useState([]);
  const [data, setData] = useState({});
  const [selectedVideo, setSelectedVideo] = useState({});
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
    axios
      .get('/videos', {
        headers: {
          Accept: 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      })
      .then((response) => {
        setVideoInformation(response.data);
        console.log(response.data);
      });
  }, [accessToken]);

  const handleSave = async () => {
    const formData = new FormData();
    formData.append('userId', user.userId);
    formData.append('movieId', tmdbId);
    formData.append('name', data.name);
    formData.append('url', data.url);
    formData.append('site', data.site);
    formData.append('videoKey', data.videoKey);
    formData.append('videoType', data.videoType);
    formData.append('official', data.official);

    axios
      .post('/videos', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
          Authorization: `Bearer ${accessToken}`,
        },
      })
      .then((response) => {
        console.log(response.data);
        setState('base'); // Return to base state
      });
  };

  const handleUpdate = async () => {
    const updateData = {
      id: selectedVideo.id,
      userId: selectedVideo.userId,
      movieId: tmdbId,
      name: selectedVideo.name,
      url: selectedVideo.url,
      site: selectedVideo.site,
      videoKey: selectedVideo.videoKey,
      videoType: selectedVideo.videoType,
      official: selectedVideo.official,
    };

    axios.patch(`/videos/${selectedVideo.id}`, updateData, {
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
    }).then(() => {
      setState('base');
      setSelectedVideo({}); // Clear selected video after update
    });
  };

  const handleDelete = (id) => {
    const isConfirmed = window.confirm('Are you sure you want to delete this video?');
    if (isConfirmed) {
      axios
        .delete(`/videos/${id}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        })
        .then(() => {
          console.log('Video Deleted');
        });
    }
  };

  const renderForm = () => {
    const fields = [
      { name: 'name', label: 'Name' },
      { name: 'url', label: 'Video URL' },
      { name: 'site', label: 'Site' },
      { name: 'videoKey', label: 'Video Key' },
      { name: 'videoType', label: 'Video Type' },
      { name: 'official', label: 'Official', type: 'radio' },  // Change to 'radio' type
    ];
  
    return (
      <div>
        <form className="video-form-container">
          {fields.map((field) => (
            <div key={field.name} className="video-form-group">
              <label>{field.label}</label>
              {field.type === 'radio' ? (
                // Render radio buttons for "Official"
                <div className="radio-group">
                  <label>
                    <input
                      type="radio"
                      name="official"
                      value="true"
                      checked={state === 'add' ? data.official === 'true' : selectedVideo.official === 'true'}
                      onChange={handleOnChange}
                    />
                    Yes
                  </label>
                  <label>
                    <input
                      type="radio"
                      name="official"
                      value="false"
                      checked={state === 'add' ? data.official === 'false' : selectedVideo.official === 'false'}
                      onChange={handleOnChange}
                    />
                    No
                  </label>
                </div>
              ) : (
                <input
                  type={field.type || 'text'}
                  name={field.name}
                  value={state === 'add' ? data[field.name] || '' : selectedVideo[field.name] || ''}
                  onChange={handleOnChange}
                  className="video-input-field"
                />
              )}
            </div>
          ))}
        </form>
        <button onClick={state === 'add' ? handleSave : handleUpdate} className="video-form-button">
          {state === 'add' ? 'Save' : 'Update'}
        </button>
      </div>
    );
  };
  
  

  return (
    <div className="videos-page">
      <button onClick={() => setState(state === 'base' ? 'add' : 'base')} className="toggle-form-button">
        {state === 'base' ? 'Add Video' : 'Back to List'}
      </button>
      {state !== 'base' && renderForm()}
      <div className="video-list">
        {Array.isArray(videoInformation) && videoInformation.length > 0 ? (
          videoInformation.map(
            (video) =>
              video.movieId === parseInt(tmdbId) && (
                <div className="video-item" key={video.id}>
                  {video.url.includes("youtube") && (
                    <iframe
                      width="560"
                      height="315"
                      src={`https://www.youtube.com/embed/${video.videoKey}`}
                      title={video.name}
                      frameBorder="0"
                      allowFullScreen
                      className="video-iframe"
                    ></iframe>
                  )}
                  <div className="video-info">
                    <h2>{video.name}</h2>
                    <p>Site: {video.site}</p>
                    <p>Type: {video.videoType}</p>
                    <p>Official: {video.official ? 'Yes' : 'No'}</p>
                  </div>
                  <div className="video-actions">
                    <button
                      onClick={() => {
                        setSelectedVideo(video);
                        setState('update');
                      }}
                      className="video-edit-button"
                    >
                      Edit
                    </button>
                    <button onClick={() => handleDelete(video.id)} className="video-delete-button">
                      Delete
                    </button>
                  </div>
                </div>
              )
          )
        ) : (
          <p>No videos available.</p>
        )}
      </div>
    </div>
  );
}

export default Videos;
