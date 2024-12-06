import { useEffect, useState } from 'react';
import { useMovieContext } from '../../../../context/MovieContext';
import { useNavigate, useParams } from 'react-router-dom';
import axios from 'axios';
import './View.css';

function View() {
  const { movie, setMovie } = useMovieContext();
  const { movieId } = useParams();
  const navigate = useNavigate();
  let { tmdbId } = useParams();
  const accessToken = localStorage.getItem('accessToken');
  const [castInformation, setCastInformation] = useState([]);
  const [photoInformation, setPhotoInformation] = useState([]);
  const [videoInformation, setVideoInformation] = useState([]);

  useEffect(() => {
    if (movieId) {
      axios
        .get(`/movies/${movieId}`)
        .then((response) => {
          const movieData = response.data;

          console.log('API Response:', movieData);

          setMovie(movieData);

          console.log('Casts:', movieData.casts);
          console.log('Videos:', movieData.videos);
          console.log('Photos:', movieData.photos);
        })
        .catch((e) => {
          console.log(e);
          navigate('/main/movies');
        });
    }
  }, [movieId, setMovie, navigate]);

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
    if (movie) {
      fetchCastData();
      fetchPhotoData();
      fetchVideoData();
      console.log('Casts:', castInformation);
      console.log('Videos:', videoInformation);
      console.log('Photos:', photoInformation);
    }
  }, [movie]);

  const fetchVideoData = async () => {
    try {
      const response = await axios.get('/videos', {
        headers: {
          Accept: 'application/json',
          Authorization: `Bearer ${accessToken}`,
        },
      });
      setVideoInformation(response.data);
      console.log('Fetched Videos:', response.data);
    } catch (error) {
      console.error('Error fetching videos:', error);
    }
  };

  useEffect(() => {
    fetchVideoData();
  }, [accessToken]);

  return (
    <>
      {movie && (
        <div className="movie-details-container">
          <div className="movie-details">
            <div className="movie-poster">
              <img
                src={`https://image.tmdb.org/t/p/w500${movie.posterPath}`}
                alt="Poster"
              />
            </div>

            <div className="movie-info">
              <div
                className="banner"
                style={{
                  backgroundImage: `url(https://image.tmdb.org/t/p/original${movie.backdropPath})`,
                }}
              >
                <h1>{movie.title}</h1>
              </div>

              <h3>{movie.overview}</h3>

              {movie.popularity && (
                <div className="movie-popularity">
                  <h4>Popularity: {movie.popularity}</h4>
                </div>
              )}

              {movie.releaseDate && (
                <div className="movie-release-date">
                  <h4>Release Date: {new Date(movie.releaseDate).toLocaleDateString()}</h4>
                </div>
              )}

              {movie.voteAverage && (
                <div className="movie-vote-average">
                  <h4>Vote Average: {movie.voteAverage}</h4>
                </div>
              )}

              {typeof movie.isFeatured === 'boolean' && (
                <div className="movie-featured">
                  <h4>{movie.isFeatured ? 'Featured Movie' : 'Not Featured'}</h4>
                </div>
              )}
            </div>
          </div>

          <div className="additional-info">
            
            {castInformation && castInformation.length > 0 ? (
              <div className="cast-container">
                <div className="cast-section">
                  <h2>Cast & Crew</h2>
                  <div className="cast-card-list">
                    {castInformation.map(
                      (cast) =>
                        cast.movieId === parseInt(tmdbId) && (
                          <div key={cast.id} className="cast-card">
                            <img src={cast.url} alt={cast.name} className="cast-img" />
                            <div className="cast-info">
                              <h3>{cast.name}</h3>
                              <p>{cast.characterName}</p>
                            </div>
                          </div>
                        )
                    )}
                  </div>
                </div>
              </div>
            ) : (
              <p>No cast information available.</p>
            )}

            {videoInformation && videoInformation.length > 0 ? (
              <div className="video-container">
                <div className="video-section">
                  <h2>Videos</h2>
                  <div className="video-card-list">
                    {videoInformation.map(
                      (video) =>
                        video.movieId === parseInt(tmdbId) && (
                          <div key={video.id} className="video-card">
                            <h3>{video.name}</h3>
                            {video.url.includes('youtube') ? (
                              <iframe
                                width="100%"
                                height="315"
                                src={`https://www.youtube.com/embed/${video.videoKey}`}
                                title={video.name}
                                frameBorder="0"
                                allowFullScreen
                                className="video-iframe"
                              ></iframe>
                            ) : (
                              <video controls width="100%" height="auto" className="video-player">
                                <source src={video.url} type="video/mp4" />
                                Your browser does not support the video tag.
                              </video>
                            )}
                          </div>
                        )
                    )}
                  </div>
                </div>
              </div>
            ) : (
              <p>No videos available.</p>
            )}

            {photoInformation && photoInformation.length > 0 ? (
              <div className="photo-container">
                <div className="photo-section">
                  <h2>Photos</h2>
                  <div className="photo-card-list">
                    {photoInformation.map(
                      (photo) =>
                        photo.movieId === parseInt(tmdbId) && (
                          <div key={photo.id} className="photo-card">
                            <img src={photo.url} alt="Movie Scene" className="photo-img" />
                          </div>
                        )
                    )}
                  </div>
                </div>
              </div>
            ) : (
              <p>No photos available.</p>
            )}
          </div>
        </div>
      )}
    </>
  );
}

export default View;
