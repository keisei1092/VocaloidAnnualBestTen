import React from "react";
import ReactDOM from "react-dom";
import axios from "axios";

class Layout extends React.Component {
  componentDidMount() {
    console.log("mounted. :]");
  }
  render() {
    return (
      <h1>jussen-client</h1>
    );
  }
}

const app = document.getElementById('app');

ReactDOM.render(<Layout/>, app);
