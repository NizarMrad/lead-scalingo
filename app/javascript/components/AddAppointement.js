import React from "react";
import { useMutation } from "@apollo/client";

import { ADD_APPOINTEMENT } from "../queries/allQueries";

export const AddAppointement = () => {
  const [addAppointement, { data }] = useMutation(ADD_APPOINTEMENT);

  const onSubmit = (e) => {
    e.preventDefault();

    const { motif, date } = e.target.elements;

    addAppointement({
      variables: { motif: motif.value, date: date.value },
    }).then((motif.value = ""), (date.value = ""));
    //window.location.reload();
  };

  return (
    <form onSubmit={onSubmit}>
      <div>
        <input
          className="border-2 rounded-xl mt-2 mb-2 text-xl"
          type="text"
          name="motif"
          placeholder="Votre motif de rendez vous"
        />
        <input type="datetime-local" name="date" />
      </div>
      <button className="text-2xl text-indigo-200 font-bold">
        Prendre rendez-vous
      </button>
    </form>
  );
};
