import React from "react";
import { gql, useMutation } from "@apollo/client";
import { COMMENTS } from "../queries/allQueries";

import { ADD_ANSWER } from "../queries/allQueries";

const AddAnswer = ({ comId }) => {
  const [addAnswer, { data }] = useMutation(ADD_ANSWER);

  const onSubmit = (e) => {
    e.preventDefault();

    const { body, commentid } = e.target.elements;

    addAnswer({
      variables: { body: body.value, comment_id: commentid.value },
      refetchQueries: [{ query: COMMENTS }],
    }).then((body.value = ""));
  };

  return (
    <form onSubmit={onSubmit}>
      <div>
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl "
          type="text"
          name="body"
          placeholder="Votre Réponse"
        />
        <input
          className="border-2 rounded-xl mt-2 mb-2"
          type="hidden"
          name="commentid"
          value={comId}
        />
      </div>
      <button className="text-2xl text-black font-bold">Add Answer</button>
    </form>
  );
};

export default AddAnswer;
