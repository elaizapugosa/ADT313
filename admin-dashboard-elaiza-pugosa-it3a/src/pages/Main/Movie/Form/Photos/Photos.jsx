import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Photos.css';

function Photos() {
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const user = JSON.parse(localStorage.getItem('user'));
  const [photoInformation, setPhotoInformation] = useState([]);
  const [data, setData] = useState([]);
  const [selectedPhoto, setSelectedPhoto] = useState([]);
  const [state, setState] = useState('base');

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    if (state === 'add') {
      setData((prevData) => ({
        ...prevData,
        [name]: value,
      }));
    } else {
      setSelectedPhoto((prevData) => ({
        ...prevData,
        [name]: value,
      }));
    }
  };

  useEffect(() => {
    axios({
      method: 'get',
      url: `/photos`,
      headers: {
        Accept: 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
    }).then((response) => {
      setPhotoInformation(response.data);
      console.log(response.data);
    });
  }, []);

  const handleSave = async () => {
    const formData = new FormData();
    formData.append('userId', user.userId);
    formData.append('movieId', tmdbId);
    formData.append('url', data.url); 
    formData.append('description', data.description); 

    axios({
      method: 'post',
      url: '/photos',
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
      id: selectedPhoto.id,
      userId: selectedPhoto.userId,
      movieId: tmdbId,
      url: selectedPhoto.url, 
      description: selectedPhoto.description, 
    };

    axios({
      method: 'patch',
      url: `/photos/${selectedPhoto.id}`,
      data: updateData,
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
    });
  };

  const handleDelete = (id) => {
    const isConfirmed = window.confirm('Are you sure you want to delete this photo?');
    if (isConfirmed) {
      axios({
        method: 'delete',
        url: `/photos/${id}`,
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
      }).then((response) => {
        console.log('Photo Deleted');
      });
    }
  };

  const renderForm = () => {
    if (state === 'add') {
      return (
        <div>
          <form>
            <label>
              Photo URL
              <input type="text" name="url" value={data.url} onChange={handleOnChange} />
            </label>
            <label>
              Caption
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
              Photo URL
              <input type="text" name="url" value={selectedPhoto.url} onChange={handleOnChange} />
            </label>
            <label>
              Caption
              <input type="text" name="description" value={selectedPhoto.description} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleUpdate}>Save</button>
        </div>
      );
    }
  };

  return (
    <div className="photos-page">
      <button
        onClick={() => (state === 'base' ? setState('add') : setState('base'))}
        className="toggle-form-button"
      >
        {state === 'base' ? 'Add Photo' : 'Back to List'}
      </button>

      {renderForm()}

      <div className="photo-list">
        {Array.isArray(photoInformation) && photoInformation.length > 0 ? (
          photoInformation.map((photo) =>
            photo.movieId === parseInt(tmdbId) && (
              <div className="photo-item" key={photo.id}>
                <img src={photo.url} alt={photo.description} className="photo-thumbnail" />
                <div className="photo-info">
                  <h4>{photo.description}</h4>
                </div>
                <div className="photo-actions">
                  <button
                    onClick={() => {
                      setSelectedPhoto(photo);
                      setState('update');
                    }}
                    className="photo-edit-button"
                  >
                    <i className="fas fa-edit"></i>
                  </button>
                  <button
                    onClick={() => handleDelete(photo.id)}
                    className="photo-deleted-button"
                  >
                    <i className="fas fa-trash"></i>
                  </button>
                </div>
              </div>
            )
          )
        ) : (
          <p>No photos available.</p>
        )}
      </div>
    </div>
  );
}

export default Photos;
