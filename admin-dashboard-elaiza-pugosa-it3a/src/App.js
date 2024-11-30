import * as React from 'react';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';
import './index.css';
import Login from './pages/Public/Login/Login';
import Dashboard from './pages/Main/Dashboard/Dashboard';
import Main from './pages/Main/Main';
import Register from './pages/Public/Register/Register';
import Movie from './pages/Main/Movie/Movie';
import Lists from './pages/Main/Movie/Lists/Lists';
import Form from './pages/Main/Movie/Form/Form';
import Casts from './pages/Main/Movie/Form/Casts/Casts';
import Photos from './pages/Main/Movie/Form/Photos/Photos';
import Videos from './pages/Main/Movie/Form/Videos/Videos';

const router = createBrowserRouter([
  {
    path: '/',
    element: <Login />,
  },
  {
    path: '/register',
    element: <Register />, 
  },
  {
    path: '/main',
    element: <Main />,
    children: [
      {
        path: '/main/movies',
        element: <Movie />,
        children: [
          {
            path: '/main/movies',
            element: <Lists />,
          },
          {
            path: '/main/movies/form/:movieId',
            element: <Form />,
            children: [
              {
                path: 'cast-and-crews/:tmdbId',
                element: <Casts />,
              },
              {
                path: 'videos/:tmdbId',
                element: <Videos />,
              },
              {
                path: 'photos/:tmdbId',
                element: <Photos />,
              },
            ],
          },
          {
            path: '/main/movies/form',  // This handles the case when there's no movieId
            element: <Form />,
          },
        ],
      },
    ],
  },
]);

function App() {
  return (
    <div className='App'>
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
