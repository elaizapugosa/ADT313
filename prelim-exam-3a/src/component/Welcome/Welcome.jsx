import React, { useCallback } from 'react';
import './Welcome.css';

function WelcomePanel({ username, onLogout }) {
  const handleLogout = useCallback(() => {
    onLogout();
  }, [onLogout]);

  return (
    <div className="welcome-panel">
      <h1 className="welcome-message">Welcome {username} from BSIT 3A!</h1>
      <button className="close-button" onClick={handleLogout}>Logout</button>
    </div>
  );
}

export default WelcomePanel;
