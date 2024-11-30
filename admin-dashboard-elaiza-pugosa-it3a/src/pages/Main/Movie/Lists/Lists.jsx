import { useNavigate } from 'react-router-dom';
import './Lists.css';
import { useEffect, useState } from 'react';
import axios from 'axios';

const Lists = () => {
  const accessToken = localStorage.getItem('accessToken');
  const navigate = useNavigate();
  const [lists, setLists] = useState([]);

  // Function to fetch movies from the API or database
  const getMovies = () => {
    axios.get('/movies').then((response) => {
      setLists(response.data);
    });
  };

  useEffect(() => {
    getMovies();
  }, []);

  // Function to update IDs in the database after deletion
  const updateMovieIds = (updatedMovies) => {
    updatedMovies.forEach((movie, index) => {
      const newId = index + 1; // New ID starts from 1
      if (movie.id !== newId) {
        axios.put(`/movies/${movie.id}`, { id: newId }, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });
      }
    });
  };

  // Handle delete action
  const handleDelete = async (id) => {
    const isConfirm = window.confirm(
      'Are you sure that you want to delete this data?'
    );
    if (isConfirm) {
      try {
        // Delete the movie from the database
        await axios.delete(`/movies/${id}`, {
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });

        // Update the movie list by removing the deleted movie
        const updatedLists = lists.filter((movie) => movie.id !== id);

        // Reassign IDs to remaining movies
        const reorderedLists = updatedLists.map((movie, index) => ({
          ...movie,
          id: index + 1,
        }));

        // Update the database with new IDs
        updateMovieIds(reorderedLists);

        // Update the front-end state
        setLists(reorderedLists);
      } catch (error) {
        console.error('Error deleting movie:', error);
      }
    }
  };

  const handleUpdate = (id) => {
    // Navigate to the form with the movie ID to edit
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
