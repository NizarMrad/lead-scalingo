import React from "react";
import AddAnswer from "./AddAnswer";
import { AddAppointement } from "./AddAppointement";
import { AddComment } from "./AddComment";
import { AddFacebookemodif } from "./AddFacebookmodif";
import { AddGooglemodif } from "./AddGooglemodif";
import { AddWebmodif } from "./AddWebmodif";
import AsideBar from "./AsideBar";
import Action from "./Action";

import Comment from "./Comment";
import Communication from "./Communication";
import PannelClient from "./PannelClient";

function App() {
  //const obj = JSON.parse(tokkens.tokkens.body)
  //const likes = obj.fan_count
  return (
    <>
      <div className="flex h-full bg-gray-800">
        <AsideBar />
        <PannelClient />
      </div>
    </>
  );
}

export default App;
