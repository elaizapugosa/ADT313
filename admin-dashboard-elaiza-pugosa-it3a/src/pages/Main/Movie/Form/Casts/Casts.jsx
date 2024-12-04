import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Casts.css';

function Casts() {
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const user = JSON.parse(localStorage.getItem('user'));
  const [castInformation, setCastInformation] = useState([]);
  const [data, setData] = useState({});
  const [selectedCast, setSelectedCast] = useState({});
  const [state, setState] = useState("base");
  const [searchQuery, setSearchQuery] = useState("");
  const [tmdbCasts, setTmdbCasts] = useState([]);
  const apiKey = "207de243797c06bb197471a4bebd69d7";

  const handleOnChange = (e) => {
    const { name, value } = e.target;
    setData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const fetchCastData = async () => {
    try {
      const response = await axios.get('/casts', {
        headers: {
          Accept: 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setCastInformation(response.data);
    } catch (error) {
      console.error('Error fetching cast data:', error);
    }
  };

  useEffect(() => {
    fetchCastData();
  }, []);

  const handleSave = async () => {
    try {
      const formData = {
        userId: user.userId,
        movieId: tmdbId,
        name: data.name,
        characterName: data.characterName,
        url: data.url,
      };
      const response = await axios.post('/casts', formData, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setCastInformation((prev) => [...prev, response.data]);
      setState("base");
    } catch (error) {
      console.error('Error saving cast:', error);
    }
  };

  const handleUpdate = async () => {
    try {
      const updatedData = {
        id: selectedCast.id,
        userId: selectedCast.userId,
        movieId: tmdbId,
        name: selectedCast.name,
        characterName: selectedCast.characterName,
        url: selectedCast.url,
      };
      await axios.patch(`/casts/${selectedCast.id}`, updatedData, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setCastInformation((prev) =>
        prev.map((cast) => (cast.id === selectedCast.id ? updatedData : cast))
      );
      setState("base");
    } catch (error) {
      console.error('Error updating cast:', error);
    }
  };

  const handleDelete = async (id) => {
    const isConfirmed = window.confirm('Are you sure you want to delete this cast?');
    if (isConfirmed) {
      try {
        await axios.delete(`/casts/${id}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });
        setCastInformation((prev) => prev.filter((cast) => cast.id !== id));
      } catch (error) {
        console.error('Error deleting cast:', error);
      }
    }
  };

  const handleSearchMovie = async () => {
    const url = `https://api.themoviedb.org/3/search/movie?api_key=${apiKey}&query=${searchQuery}`;
    try {
      const response = await axios.get(url);
      const movieId = response.data.results[0]?.id;
      if (movieId) {
        handleImportCast(movieId);
      }
    } catch (error) {
      console.error('Error fetching movie data:', error);
    }
  };

  const handleImportCast = async (movieId) => {
    const url = `https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=${apiKey}`;
    try {
      const response = await axios.get(url);
      setTmdbCasts(response.data.cast);
    } catch (error) {
      console.error('Error fetching cast data:', error);
    }
  };

  const handleAddTmdbCast = async (cast) => {
    try {
      const formData = {
        userId: user.userId,
        movieId: tmdbId,
        name: cast.name,
        characterName: cast.character,
        url: `https://image.tmdb.org/t/p/w200/${cast.profile_path}`,
      };
      const response = await axios.post('/casts', formData, {
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setCastInformation((prev) => [...prev, response.data]);
      console.log(`${cast.name} added successfully.`);
    } catch (error) {
      console.error('Error adding TMDb cast:', error);
    }
  };

  const renderForm = () => {
    if (state === "add") {
      return (
        <div>
          <form>
            <label>
              Cast Profile URL
              <input type="text" name="url" value={data.url || ''} onChange={handleOnChange} />
            </label>
            <label>
              Cast Name
              <input type="text" name="name" value={data.name || ''} onChange={handleOnChange} />
            </label>
            <label>
              Character Name
              <input type="text" name="characterName" value={data.characterName || ''} onChange={handleOnChange} />
            </label>
          </form>
          <button onClick={handleSave} className="save-btn">Save</button>

        </div>
      );
    } else if (state === "import") {
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
          <button onClick={handleSearchMovie}className="search-btn">Search</button>
          <div className="tmdb-cast-list">
            {tmdbCasts.map((cast) => (
              <div key={cast.id} className="tmdb-cast-item">
                <img
                  src={`https://image.tmdb.org/t/p/w200/${cast.profile_path}`}
                  alt={cast.name}
                />
                <div>
                  <h3>{cast.name}</h3>
                  <p>{cast.character}</p>
                  <button onClick={() => handleAddTmdbCast(cast)}>Add Cast</button>
                </div>
              </div>
            ))}
          </div>
        </div>
      );
    }
  };

  return (
    <div className="casts-page">
      <div className="cast-button-container">
        <button
          onClick={() => (state === "base" ? setState("add") : setState("base"))}
          className="toggle-form-button"
        >
          {state === "base" ? "Add Cast" : "Back to List"}
        </button>
        <button
          onClick={() => setState("import")}
          className="import-toggle-form-button"
        >
          Import Cast
        </button>
      </div>


      {renderForm()}

      <div className="cast-list">
        {castInformation.map(
          (cast) =>
            cast.movieId === parseInt(tmdbId) && (
              <div className="cast-item" key={cast.id}>
                <div className="cast-header">
                  <img src={cast.url} alt={cast.name} className="cast-image" />
                  <div className="cast-info">
                    <h2>{cast.name}</h2>
                    <h4>{cast.characterName}</h4>
                  </div>
                </div>
                <div className="cast-actions">
                  <button
                    onClick={() => {
                      setSelectedCast(cast);
                      setState("update");
                    }}
                    className="edit-button"
                  >
                    <i className="fas fa-edit"></i>
                  </button>

                  <button
                    onClick={() => handleDelete(cast.id)}
                    className="cast-delete-button"
                  >
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

export default Casts;
