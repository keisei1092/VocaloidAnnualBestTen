import React from "react";
import ReactDOM from "react-dom";
import { Router, Route, IndexRoute, hashHistory } from "react-router";

import axios from "axios";

import Layout from "./pages/Layout";
import Featured from "./pages/Featured";

const app = document.getElementById('app');

ReactDOM.render(
  <Router history={hashHistory}>
    <Route path="/" component={Layout}>
      <IndexRoute
    </Route>
  </Router>,
  app);
