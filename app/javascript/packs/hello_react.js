import React from "react";
import ReactDOM from "react-dom";
import PropTypes from "prop-types";
import App from "../components/App";
import { ADD_COMMENT, COMMENTS } from "../queries/allQueries";

import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  useQuery,
  gql,
  HttpLink,
} from "@apollo/client";
import AddAnswer from "../components/AddAnswer";

const csrfToken = document
  .querySelector("meta[name=csrf-token]")
  .getAttribute("content");
const client = new ApolloClient({
  link: new HttpLink({
    credentials: "same-origin",
    headers: {
      "X-CSRF-Token": csrfToken,
    },
  }),
  cache: new InMemoryCache(),
});
const data = window.tokkens;

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <ApolloProvider client={client}>
      <App tokkens={data} />,
    </ApolloProvider>,

    document.body.appendChild(document.createElement("div"))
  );
});
