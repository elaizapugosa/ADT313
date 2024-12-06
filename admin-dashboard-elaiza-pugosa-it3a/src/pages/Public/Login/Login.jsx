import { useState, useRef, useCallback, useEffect } from 'react';
import './Login.css';
import { useNavigate } from 'react-router-dom';
import { useDebounce } from '../../../utils/hooks/useDebounce';
import axios from 'axios';

function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isFieldsDirty, setIsFieldsDirty] = useState(false);
  const emailRef = useRef();
  const passwordRef = useRef();
  const [isShowPassword, setIsShowPassword] = useState(false);
  const userInputDebounce = useDebounce({ email, password }, 2000);
  const [debounceState, setDebounceState] = useState(false);
  const [status, setStatus] = useState('idle');
  const [error, setError] = useState('');
  const navigate = useNavigate();

  const handleShowPassword = useCallback(() => {
    setIsShowPassword((value) => !value);
  }, [isShowPassword]);

  const handleOnChange = (event, type) => {
    setDebounceState(false);
    setIsFieldsDirty(true);

    switch (type) {
      case 'email':
        setEmail(event.target.value);
        break;

      case 'password':
        setPassword(event.target.value);
        break;

      default:
        break;
    }
  };

  const handleLogin = async () => {
    const data = { email, password };
    setStatus('loading');

    await axios({
      method: 'post',
      url: '/admin/login',
      data,
      headers: { 'Access-Control-Allow-Origin': '*' },
    })
      .then((res) => {
        console.log(res);
        localStorage.setItem('accessToken', res.data.access_token);
        localStorage.setItem('user' , JSON.stringify(res.data.user));
        navigate('/main/movies');
        setStatus('idle');
      })
      .catch((e) => {
        setError(e.response.data.message);
        console.log(e);
        setStatus('idle');
      });
  };

  useEffect(() => {
    setDebounceState(true);
  }, [userInputDebounce]);

  return (
    <div className="Login">
      <div className="login-main-container">
        <form>
          <div className="login-form-container">
            <h3>Login</h3>
  
            {error && <span className="login errors">Invalid Email and Password. Please try again!</span>}
            <div>
              <div className="form-group">
                <label>E-mail:</label>
                <input
                  type="text"
                  name="email"
                  ref={emailRef}
                  onChange={(e) => handleOnChange(e, "email")}
                />
              </div>
              {debounceState && isFieldsDirty && email === "" && (
                <span className="errors">This field is required</span>
              )}
            </div>
            <div>
              <div className="form-group password-field">
                <label>Password:</label>
                <input
                  type={isShowPassword ? "text" : "password"}
                  name="password"
                  ref={passwordRef}
                  onChange={(e) => handleOnChange(e, "password")}
                />
                
              </div>
              {debounceState && isFieldsDirty && password === "" && (
                <span className="errors">This field is required</span>
              )}
            </div>
  
            <div className="login-submit-container">
              <button
                type="button"
                disabled={status === "loading"}
                onClick={() => {
                  if (status === "loading") {
                    return;
                  }
                  if (email && password) {
                    handleLogin();
                  } else {
                    setIsFieldsDirty(true);
                    if (email === "") {
                      emailRef.current.focus();
                    }
  
                    if (password === "") {
                      passwordRef.current.focus();
                    }
                  }
                }}
              >
                {status === "idle" ? "Login" : "Loading"}
              </button>
            </div>
  
            <div className="registration-container">
              <button
                type="button"
                className="registration-submit"
                onClick={() => navigate("/register")}
              >
                <small>Register</small>
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
  
}

export default Login;
