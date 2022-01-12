import React from "react";
import { useMutation } from "@apollo/client";

import { ADD_WEBMODIF } from "../queries/allQueries";

export const AddWebmodif = () => {
  const [addWebmodif, { data }] = useMutation(ADD_WEBMODIF);

  const onSubmit = (e) => {
    e.preventDefault();

    const { change1, change2, change3 } = e.target.elements;

    addWebmodif({
      variables: {
        change1: change1.value,
        change2: change2.value,
        change3: change3.value,
      },
    }).then((change1.value = ""), (change2.value = ""), (change3.value = ""));
    //window.location.reload();
  };

  return (
    <form onSubmit={onSubmit}>
      <div>
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl"
          type="text"
          name="change1"
          placeholder="Votre Modification"
        />
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl"
          type="text"
          name="change2"
          placeholder="Votre deuxième modification"
        />
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl"
          type="text"
          name="change3"
          placeholder="Votre troisième modfication"
        />
      </div>
      <button className="text-2xl text-indigo-200 font-bold">
        Change web info
      </button>
    </form>
  );
};
