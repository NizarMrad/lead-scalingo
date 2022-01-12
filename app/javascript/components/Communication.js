import React from "react";
import { AddComment } from "./AddComment";
import Comment from "./Comment";

export default function Communication() {
  return (
    <div className="flex">
      <AddComment />
      <div className="overflow-scroll h-96">
        <Comment />
      </div>
    </div>
  );
}
