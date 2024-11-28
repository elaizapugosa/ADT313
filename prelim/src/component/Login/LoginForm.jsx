import React, { useRef, useState, useEffect, useCallback } from 'react';
import './LoginForm.css';
import Calculator from '../Calculator/Calculator';
import WelcomePanel from '../Welcome/Welcome';

function LoginForm() {
  const usernameRef = useRef(null);
  const passwordRef = useRef(null);
  const [darkMode, setDarkMode] = useState(false);
  const [loggedIn, setLoggedIn] = useState(false);
  const [username, setUsername] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  useEffect(() => {
    if (username) {
      console.log('Username changed:', username);
    }
  }, [username]);

  const handleSubmit = useCallback((e) => {
    e.preventDefault();
    setLoading(true); 

    const enteredUsername = usernameRef.current ? usernameRef.current.value : '';
    const enteredPassword = passwordRef.current ? passwordRef.current.value : '';

    if (!enteredUsername || !enteredPassword) {
      setError('Username and password must not be empty.');
      setLoading(false); 
      return;
    }

    setUsername(enteredUsername);
    console.log('Password:', enteredPassword);
    setError('');

    
    setTimeout(() => {
      setLoggedIn(true);
      setLoading(false); 
    }, 1000); 
  }, []);

  const handleLogout = useCallback(() => {
    setLoggedIn(false);
    if (usernameRef.current) usernameRef.current.value = '';
    if (passwordRef.current) passwordRef.current.value = '';
    setUsername('');
  }, []);

  if (loggedIn) {
    return <WelcomePanel username={username} onLogout={handleLogout} />;
  }

  return (
    <div className={darkMode ? 'container dark' : 'container'}>
      <h2 className="heading">Login Form</h2>
      <button onClick={() => setDarkMode(!darkMode)} className="button">
        Switch to {darkMode ? 'Light' : 'Dark'} Mode
      </button>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          ref={usernameRef}
          placeholder="Username"
          className="input"
        />
        <input
          type="password"
          ref={passwordRef}
          placeholder="Password"
          className="input"
        />
        <button type="submit" className="button" disabled={loading}>
          {loading ? 'Loading...' : 'Login'}
        </button>
      </form>
      {error && <p className="error">{error}</p>}
      <Calculator />
    </div>
  );
}

export default LoginForm;
