import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Photos.css';

function Photos() {
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const user = JSON.parse(localStorage.getItem('user'));
  const [photoInformation, setPhotoInformation] = useState([]);
  const [data, setData] = useState({});
  const [selectedPhoto, setSelectedPhoto] = useState({});
  const [state, setState] = useState('base');
  const [searchQuery, setSearchQuery] = useState('');
  const [tmdbPhotos, setTmdbPhotos] = useState([]);
  const apiKey = '207de243797c06bb197471a4bebd69d7';

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const fetchPhotoData = async () => {
    try {
      const response = await axios.get('/photos', {
        headers: {
          Accept: 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setPhotoInformation(response.data);
    } catch (error) {
      console.error('Error fetching photos:', error);
    }
  };

  useEffect(() => {
    fetchPhotoData();
  }, []);

  const handleSave = async () => {
    try {
      const formData = {
        userId: user.userId,
        movieId: tmdbId,
        url: data.url,
        description: data.description,
      };
      const response = await axios.post('/photos', formData, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setPhotoInformation((prev) => [...prev, response.data]);
      setState('base');
      alert("Photo added successfully!");
    } catch (error) {
      console.error('Error saving photo:', error);
    }
  };

  const handleEdit = (photo) => {
    setSelectedPhoto(photo);
    setData({
      url: photo.url,
      description: photo.description,
    });
    setState('edit');
  };

  const handleUpdate = async () => {
    try {
      const updatedPhoto = {
        userId: user.userId,
        movieId: tmdbId,
        url: data.url,
        description: data.description,
      };
      const response = await axios.put(`/photos/${selectedPhoto.id}`, updatedPhoto, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setPhotoInformation((prev) =>
        prev.map((photo) => (photo.id === selectedPhoto.id ? response.data : photo))
      );
      setState('base');
      alert("Photo updated successfully!");
    } catch (error) {
      console.error('Error updating photo:', error);
    }
  };

  const handleDelete = async (photoId) => {
    const isConfirmed = window.confirm('Are you sure you want to delete this photo?');
    if (isConfirmed) {
      try {
        await axios.delete(`/photos/${photoId}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });
        setPhotoInformation((prev) => prev.filter((photo) => photo.id !== photoId));
        alert("Photo deleted successfully!");
      } catch (error) {
        console.error('Error deleting photo:', error);
      }
    }
  };

  const handleSearchMovie = async () => {
    const url = `https://api.themoviedb.org/3/search/movie?api_key=${apiKey}&query=${searchQuery}`;
    try {
      const response = await axios.get(url);
      const movieId = response.data.results[0]?.id;
      if (movieId) {
        handleImportPhotos(movieId);
      }
    } catch (error) {
      console.error('Error searching for movie:', error);
    }
  };

  const handleImportPhotos = async (movieId) => {
    const url = `https://api.themoviedb.org/3/movie/${movieId}/images?api_key=${apiKey}`;
    try {
      const response = await axios.get(url);
      setTmdbPhotos(response.data.backdrops);
    } catch (error) {
      console.error('Error importing photos:', error);
    }
  };

  const handleAddTmdbPhoto = async (photo) => {
    try {
      const formData = {
        userId: user.userId,
        movieId: tmdbId,
        url: `https://image.tmdb.org/t/p/original${photo.file_path}`,
        description: 'Imported from TMDB',
      };
      const response = await axios.post('/photos', formData, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setPhotoInformation((prev) => [...prev, response.data]);
      alert('Photo imported successfully.');
    } catch (error) {
      console.error('Error adding TMDB photo:', error);
    }
  };

  const renderForm = () => {
    if (state === 'add') {
      return (
        <div>
          <form>
            <label>
              Photo URL
              <input type="text" name="url" value={data.url || ''} onChange={handleOnChange} />
            </label>
            <label>
              Caption
              <input type="text" name="description" value={data.description || ''} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleSave} className="save-btn">
            Save
          </button>
        </div>
      );
    } else if (state === 'edit') {
      return (
        <div>
          <form>
            <label>
              Photo URL
              <input type="text" name="url" value={data.url || ''} onChange={handleOnChange} />
            </label>
            <label>
              Caption
              <input type="text" name="description" value={data.description || ''} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleUpdate} className="save-btn">
            Update
          </button>
        </div>
      );
    } else if (state === 'import') {
      return (
        <div>
          <label>
            Search Movie:
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
          </label>
          <button onClick={handleSearchMovie} className="search-btn">
            Search
          </button>
          <div className="tmdb-photo-list">
            {tmdbPhotos.map((photo, index) => (
              <div key={index} className="tmdb-photo-item">
                <img
                  src={`https://image.tmdb.org/t/p/w200/${photo.file_path}`}
                  alt={`Photo ${index}`}
                />
                <button onClick={() => handleAddTmdbPhoto(photo)}>Add Photo</button>
              </div>
            ))}
          </div>
        </div>
      );
    }
  };

  return (
    <div className="photos-page">
      <div className="photo-button-container">
        <button
          onClick={() => (state === 'base' ? setState('add') : setState('base'))}
          className="toggle-form-button"
        >
          {state === 'base' ? 'Add Photo' : 'Back to List'}
        </button>
        <button
          onClick={() => setState('import')}
          className="import-toggle-photos-button"
        >
          Import Photos
        </button>
      </div>

      {renderForm()}

      <div className="photo-list">
        {photoInformation.map(
          (photo) =>
            photo.movieId === parseInt(tmdbId) && (
              <div className="photo-item" key={photo.id}>
                <img src={photo.url} alt={photo.description} className="photo-thumbnail" />
                <h4>{photo.description}</h4>

                <div className="photos-actions">
                <button onClick={() => handleEdit(photo)} className="edit-btn">
                <i className="fas fa-edit"></i>
                </button>
                <button onClick={() => handleDelete(photo.id)} className="delete-btn">
                <i className="fas fa-trash"></i>
                </button>
                </div>
              </div>
            )
        )}
      </div>
    </div>
  );
}

export default Photos;
