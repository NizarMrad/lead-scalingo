import React from "react";

export default function Appointement() {
  return (
    <div>
      <form>
        <input type="text" placeholder="Motif de rendez vous " />
        <input type="datetime-local" />
        <button>Valide le rendez vous</button>
      </form>
    </div>
  );
}
