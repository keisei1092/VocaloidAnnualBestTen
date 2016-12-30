import React from "react";
import ReactDOM from "react-dom";
import axios from "axios";

class Layout extends React.Component {
  componentDidMount() {
    axios
      .get("http://localhost:3000")
      .then(function(result) {
        console.log(result);
      })
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
