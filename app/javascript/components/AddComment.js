import React from "react";
import { useMutation } from "@apollo/client";

import { ADD_COMMENT, COMMENTS } from "../queries/allQueries";

export const AddComment = () => {
  const [addComment, { data }] = useMutation(ADD_COMMENT);

  const onSubmit = (e) => {
    e.preventDefault();

    const { body } = e.target.elements;

    addComment({
      variables: { body: body.value },
      refetchQueries: [{ query: COMMENTS }],
    }).then((body.value = ""));
    //window.location.reload();
  };

  return (
    <form onSubmit={onSubmit}>
      <div className="mx-5">
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl "
          type="text"
          name="body"
          placeholder="Votre Commentaire"
        />
      </div>
      <button className="text-2xl text-indigo-700 font-bold mt-2 mb-2">
        AddComment
      </button>
    </form>
  );
};
