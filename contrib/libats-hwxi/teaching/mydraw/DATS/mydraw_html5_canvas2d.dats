(***********************************************************************)
(*                                                                     *)
(*                         ATS/contrib/atshwxi                         *)
(*                                                                     *)
(***********************************************************************)

(*
** Copyright (C) 2013 Hongwei Xi, ATS Trustful Software, Inc.
**
** Permission is hereby granted, free of charge, to any person obtaining a
** copy of this software and associated documentation files (the "Software"),
** to deal in the Software without restriction, including without limitation
** the rights to use, copy, modify, merge, publish, distribute, sublicense,
** and/or sell copies of the Software, and to permit persons to whom the
** Software is furnished to do so, subject to the following stated conditions:
** 
** The above copyright notice and this permission notice shall be included in
** all copies or substantial portions of the Software.
** 
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
** OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
** THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
** FROM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
** IN THE SOFTWARE.
*)

(* ****** ****** *)
//
// HX-2013-02: a simple drawing package
//
(* ****** ****** *)

#include
"share/atspre_define.hats"

(* ****** ****** *)

staload "./../SATS/mydraw.sats"
staload "./../SATS/mydraw_html5_canvas2d.sats"

(* ****** ****** *)

macdef PI = 3.1415926535898

(* ****** ****** *)

implement{
} mydraw_new_path () = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_beginPath (cr)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_new_path]

(* ****** ****** *)

implement{
} mydraw_close_path () = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_closePath (cr)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_close_path]

(* ****** ****** *)

implement{
} mydraw_move_to (p) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_moveTo (cr, p.x, p.y)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_move_to]

implement{
} mydraw_move_to_xy (x, y) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_moveTo (cr, x, y)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_move_to_xy]

(* ****** ****** *)

implement{
} mydraw_line_to (p) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_lineTo (cr, p.x, p.y)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_line_to]

implement{
} mydraw_line_to_xy (x, y) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_lineTo (cr, x, y)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_line_to_xy]

(* ****** ****** *)

implement{
} mydraw_rectangle
  (pul, w, h) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_rect (cr, pul.x, pul.y, w, h)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_rectangle]

(* ****** ****** *)

implement{
} mydraw_arc
  (pc, rad, ang1, ang2) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_arc (cr, pc.x, pc.y, rad, ang1, ang2, true)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_arc]

implement{
} mydraw_arc_neg
  (pc, rad, ang1, ang2) = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val () = canvas2d_arc (cr, pc.x, pc.y, rad, ang1, ang2, false)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_arc_neg]

(* ****** ****** *)

implement{
} mydraw_fill () = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val ((*void*)) = canvas2d_fill (cr)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_fill]

(* ****** ****** *)

implement{
} mydraw_stroke () = let
  val (
    fpf | cr
  ) = mydraw_get0_canvas2d<> ()
  val ((*void*)) = canvas2d_stroke (cr)
  prval ((*void*)) = fpf (cr)
in
  // nothing
end // end of [mydraw_stroke]

(* ****** ****** *)

(* end of [mydraw_html5_canvas2d.dats] *)
