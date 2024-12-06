import { useEffect, useState } from 'react';
import { Outlet, useNavigate } from 'react-router-dom';
import './Main.css';

function Main() {
  const navigate = useNavigate();
  const [accessToken, setAccessToken] = useState(localStorage.getItem('accessToken'));

  const handleLogout = () => {
    localStorage.removeItem('accessToken');
    setAccessToken(null); 
    navigate('/'); 
  };

  useEffect(() => {
    if (!accessToken) {
      navigate('/'); 
    }
  }, [accessToken, navigate]);

  return (
    <div className="Main">
      <div className="container">
        <div className="navigation">
          <ul>
            <li>
            <a className="movies-btn" onClick={() => navigate('/main/movies')}>Movies</a>
            </li>
            {accessToken ? (
              <li className="logout">
                <a className="logout-btn" onClick={handleLogout}>Logout</a>
              </li>
            ) : (
              <li className="login">
                <a className="login-btn" onClick={() => alert('Go to Login page')}>Login</a>
              </li>
            )}
          </ul>
        </div>
        <div className="outlet">
          <Outlet />
        </div>
      </div>
    </div>
  );
}

export default Main;
