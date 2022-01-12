import React, { useState } from "react";
import { AddAppointement } from "./AddAppointement";
import { AddFacebookemodif } from "./AddFacebookmodif";
import { AddGooglemodif } from "./AddGooglemodif";
import { AddWebmodif } from "./AddWebmodif";

export default function Action() {
  const [showgoogle, setShowgoogle] = useState(true);
  const showGoogle = () => setShowgoogle(false);
  const closeGoogle = () => setShowgoogle(true);

  const [showfacebook, setShowfacebook] = useState(true);
  const showFacebook = () => setShowfacebook(false);
  const closeFacebook = () => setShowfacebook(true);

  const [showweb, setShowweb] = useState(true);
  const showWeb = () => setShowweb(false);
  const closeWeb = () => setShowweb(true);

  const [rdv, setRdv] = useState(true);
  const showRdv = () => setRdv(false);
  const closeRdv = () => setRdv(true);

  return (
    <>
      <li class="px-2 py-1 text-white transition-colors duration-150">
        <span class="inline-flex items-center  text-sm font-semibold text-white hover:texte-pink-500">
          <img
            src="https://img.icons8.com/external-wanicon-lineal-color-wanicon/64/000000/external-edit-user-interface-wanicon-lineal-color-wanicon.png"
            class="h-6 w-6"
          />
          <span class="ml-4">Modifications</span>
        </span>
        <div class="px-1 hover:text-gray-800 hover:bg-white rounded-md">
          <div class="flex items-center">
            <img
              src="https://img.icons8.com/bubbles/100/000000/web.png"
              class="h-8 w-8"
            />
            <div
              onClick={showWeb}
              class="cursor-pointer w-full ml-2  text-sm font-semibold text-white hover:text-gray-800 hover:bg-white"
            >
              Contenu de votre site web
            </div>
            <div
              className={`fixed ${
                showweb ? "hidden" : ""
              } inset-0 h-screen w-full bg-opacity-75 bg-gray-900 p-48`}
            >
              <div className="bg-blue-700 h-96 w-96 p-12 ">
                <AddWebmodif />
              </div>
              <button
                type="button"
                onClick={closeWeb}
                className="rounded-xl bg-red-700 text-center font-bold text-xl text-white px-4 py-2"
              >
                Close X
              </button>
            </div>
          </div>
        </div>
      </li>
      <li class="px-2 py-1 text-white transition-colors duration-150">
        <div class="px-1 hover:text-gray-800 hover:bg-white rounded-md">
          <div class="flex items-center">
            <img
              src="https://img.icons8.com/bubbles/100/000000/facebook-new.png"
              class="h-8 w-8"
            />
            <div
              onClick={showFacebook}
              class="cursor-pointer w-full ml-2  text-sm font-semibold text-white hover:text-gray-800 hover:bg-white"
            >
              Contenu Facebook
            </div>
            <div
              className={`fixed ${
                showfacebook ? "hidden" : ""
              } inset-0 h-screen w-full bg-opacity-75 bg-blue-500 p-48`}
            >
              <div className="bg-blue-700 h-96 w-96 p-12 ">
                <AddFacebookemodif />
              </div>
              <button
                type="button"
                onClick={closeFacebook}
                className="rounded-xl bg-red-700 text-center font-bold text-xl text-white px-4 py-2"
              >
                Close X
              </button>
            </div>
          </div>
        </div>
      </li>
      <li class="px-2 py-1 text-white transition-colors duration-150">
        <div class="px-1 hover:text-gray-800 hover:bg-white rounded-md">
          <div class="flex items-center">
            <img
              src="https://img.icons8.com/bubbles/100/000000/google-logo.png"
              class="h-8 w-8"
            />
            <div
              onClick={showGoogle}
              class="cursor-pointer w-full ml-2  text-sm font-semibold text-white hover:text-gray-800 hover:bg-white"
            >
              Contenu Google
            </div>
            <div
              className={`fixed ${
                showgoogle ? "hidden" : ""
              } inset-0 h-screen w-full bg-opacity-75 bg-green-900 p-48`}
            >
              <div className="bg-blue-700 h-96 w-96 p-12 ">
                <AddGooglemodif />
              </div>
              <button
                type="button"
                onClick={closeGoogle}
                className="rounded-xl bg-red-700 text-center font-bold text-xl text-white px-4 py-2"
              >
                Close X
              </button>
            </div>
          </div>
        </div>
      </li>
      <li class="px-2 py-1 text-white transition-colors duration-150">
        <div class="px-1 hover:text-gray-800 hover:bg-white rounded-md">
          <div class="flex items-center">
            <img
              src="https://img.icons8.com/bubbles/100/000000/upload.png"
              class="h-8 w-8"
            />
            <a
              href="#"
              class="w-full ml-2  text-sm font-semibold text-white hover:text-gray-800 hover:bg-white"
            >
              Uploader des documents
            </a>
          </div>
        </div>
      </li>
      <li class="px-2 py-1 text-white transition-colors duration-150">
        <div class="px-1 hover:text-gray-800 hover:bg-gray-100 rounded-md">
          <div class="flex items-center">
            <img
              src="https://img.icons8.com/fluency/96/000000/appointment-scheduling.png"
              class="h-8 w-8"
            />
            <div
              onClick={showRdv}
              class="w-full ml-2  text-sm font-semibold text-white hover:text-gray-800 hover:bg-white"
            >
              Prendre rendez-vous
            </div>
            <div
              className={`fixed ${
                rdv ? "hidden" : ""
              } inset-0 h-screen w-full bg-opacity-75 bg-green-900 p-48`}
            >
              <div className="bg-blue-700 h-96 w-96 p-12 ">
                <AddAppointement />
              </div>
              <button
                type="button"
                onClick={closeRdv}
                className="rounded-xl bg-red-700 text-center font-bold text-xl text-white px-4 py-2"
              >
                Close X
              </button>
            </div>
          </div>
        </div>
      </li>
    </>
  );
}
