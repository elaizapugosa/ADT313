import * as React from 'react';
import * as ReactDOM from 'react-dom/client';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';
import './index.css';
import Login from './pages/Public/Login/Login';
import Register from './pages/Public/Register/Register';
import Dashboard from './pages/Main/Dashboard/Dashboard';
import Main from './pages/Main/Main';
import Movie from './pages/Main/Movie/Movie';
import Lists from './pages/Main/Movie/Lists/Lists';
import Form from './pages/Main/Movie/Form/Form';

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
      // Temporarily disabled the dashboard route
      // {
      //   path: 'dashboard', // Adjusted path for dashboard
      //   element: <Dashboard />,
      // },
      {
        path: 'movies', // Corrected to 'movies' as it's a child of /main
        element: <Movie />,
        children: [
          {
            path: '', // Default route for /main/movies will load the Lists component
            element: <Lists />,
          },
          {
            path: 'form/:movieId?', // Dynamically capture movieId, optional
            element: <Form />,
            children: [
              {
                path: '', // Default route for movie form
                element: <h1>Change this for cast & crew CRUD functionality.</h1>,
              },
              {
                path: 'cast-and-crews', // Nested route for cast and crew management
                element: <h1>Change this for cast & crew CRUD functionality component.</h1>,
              },
              {
                path: 'photos', // Nested route for photos management
                element: <h1>Change this for photos CRUD functionality component.</h1>,
              },
              {
                path: 'videos', // Nested route for videos management
                element: <h1>Change this for videos CRUD functionality component.</h1>,
              },
            ],
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
