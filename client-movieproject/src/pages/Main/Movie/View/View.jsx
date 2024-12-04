import { useEffect } from 'react';
import { useMovieContext } from '../../../../context/MovieContext';
import { useNavigate, useParams } from 'react-router-dom';
import axios from 'axios';
import './View.css'; // Assuming you have some styles

function View() {
  const { movie, setMovie } = useMovieContext(); // Use context to manage movie state
  const { movieId } = useParams(); // Getting movieId from the URL params
  const navigate = useNavigate(); // Use navigate to redirect

  useEffect(() => {
    if (movieId) {
      axios
        .get(`/movies/${movieId}`)
        .then((response) => {
          setMovie(response.data);
          console.log(response.data); // Debugging line
        })
        .catch((e) => {
          console.log(e);
          navigate('/main/movies');
        });
    }
  }, [movieId, setMovie, navigate]);
  // Dependency array ensures this effect runs when movieId changes

  return (
    <>
      {movie && (
        <div className="movie-details">
          {/* Movie Poster */}
          <div className="movie-poster">
            <img src={`https://image.tmdb.org/t/p/w500${movie.posterPath}`} alt="Poster" />
          </div>

          {/* Movie Information */}
          <div className="movie-info">
            <div className="banner" style={{ backgroundImage: `url(https://image.tmdb.org/t/p/original${movie.backdropPath})` }}>
              <h1>{movie.title}</h1>
            </div>

            <h3>{movie.overview}</h3>

            {/* Popularity */}
            {movie.popularity && (
              <div className="movie-popularity">
                <h4>Popularity: {movie.popularity}</h4>
              </div>
            )}

            {/* Release Date */}
            {movie.releaseDate && (
              <div className="movie-release-date">
                <h4>Release Date: {new Date(movie.releaseDate).toLocaleDateString()}</h4>
              </div>
            )}

            {/* Vote Average */}
            {movie.voteAverage && (
              <div className="movie-vote-average">
                <h4>Vote Average: {movie.voteAverage}</h4>
              </div>
            )}

            {/* Featured Status */}
            {typeof movie.isFeatured === 'boolean' && (
              <div className="movie-featured">
                <h4>{movie.isFeatured ? 'Featured Movie' : 'Not Featured'}</h4>
              </div>
            )}

            {/* Casts */}
            {movie.casts && movie.casts.length > 0 ? (
              <div>
                <h2>Cast & Crew</h2>
                <ul>
                  {movie.casts.map((cast) => (
                    <li key={cast.id}>
                      <img src={cast.url} alt={cast.name} />
                      <span>{cast.name} as {cast.character}</span>
                    </li>
                  ))}
                </ul>
              </div>
            ) : (
              <p>No cast information available.</p> // Fallback message
            )}

            {/* Videos */}
            {movie.videos && movie.videos.length > 0 ? (
              <div>
                <h2>Videos</h2>
                {movie.videos.map((video) => (
                  <div key={video.id}>
                    <h3>{video.title}</h3>
                    <video controls>
                      <source src={video.url} type="video/mp4" />
                      Your browser does not support the video tag.
                    </video>
                  </div>
                ))}
              </div>
            ) : (
              <p>No videos available.</p> // Fallback message
            )}

            {/* Photos */}
            {movie.photos && movie.photos.length > 0 ? (
              <div>
                <h2>Photos</h2>
                <div className="photos-container">
                  {movie.photos.map((photo) => (
                    <img key={photo.id} src={photo.url} alt="Movie Scene" />
                  ))}
                </div>
              </div>
            ) : (
              <p>No photos available.</p> // Fallback message
            )}
          </div>
        </div>
      )}
    </>
  );
}

export default View;
