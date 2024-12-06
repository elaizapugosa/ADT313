import { useNavigate } from 'react-router-dom';
import './Lists.css';
import { useEffect, useState } from 'react';
import axios from 'axios';

const Lists = () => {
  const accessToken = localStorage.getItem('accessToken');
  const navigate = useNavigate();
  const [lists, setLists] = useState([]);

  const getMovies = () => {
    axios.get('/movies').then((response) => {
      setLists(response.data);
    });
  };

  useEffect(() => {
    getMovies();
  }, []);

  const updateMovieIds = (updatedMovies) => {
    updatedMovies.forEach((movie, index) => {
      const newId = index + 1; 
      if (movie.id !== newId) {
        axios.put(`/movies/${movie.id}`, { id: newId }, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });
      }
    });
  };

  const handleDelete = async (id) => {
    const isConfirm = window.confirm(
      'Are you sure that you want to delete this data?'
    );
    if (isConfirm) {
      try {
        await axios.delete(`/movies/${id}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });

        const updatedLists = lists.filter((movie) => movie.id !== id);

        const reorderedLists = updatedLists.map((movie, index) => ({
          ...movie,
          id: index + 1,
        }));

        updateMovieIds(reorderedLists);

        setLists(reorderedLists);
      } catch (error) {
        console.error('Error deleting movie:', error);
      }
    }
  };

  const handleUpdate = (id) => {
    navigate('/main/movies/form/' + id);
  };

  return (
    <div className="lists-container">
      <h1>Movie Page</h1>
      <div className="create-container">
        <button
          type="button"
          onClick={() => {
            navigate('/main/movies/form');
          }}
        >
          Create New
        </button>
      </div>
      <div className="table-container">
        <table className="movie-lists">
          <thead>
            <tr>
              <th>ID</th>
              <th>Title</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            {lists.map((movie) => (
              <tr key={movie.id}>
                <td>{movie.id}</td>
                <td>{movie.title}</td>
                <td>
                  <button type="button" onClick={() => handleUpdate(movie.id)}>
                    Edit
                  </button>
                  <button type="button" onClick={() => handleDelete(movie.id)}>
                    Delete
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Lists;
