(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-20?? Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of the GNU LESSER GENERAL PUBLIC LICENSE as published by the
** Free Software Foundation; either version 2.1, or (at your option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi (hwxi AT cs DOT bu DOT edu)
// Start Time: Feburary, 2012
//
(* ****** ****** *)

#include "prelude/params.hats"

(* ****** ****** *)

#if VERBOSE_PRELUDE #then
#print "Loading [filebas.sats] starts!\n"
#endif // end of [VERBOSE_PRELUDE]

(* ****** ****** *)

val stdin_ref : FILEref
val stdout_ref : FILEref
val stderr_ref : FILEref

(* ****** ****** *)

val file_mode_r : file_mode (r()) // = "r"
val file_mode_rr : file_mode (rw()) // = "r+"
val file_mode_w : file_mode (w()) // = "w"
val file_mode_ww : file_mode (rw()) // = "w+"

castfn file_mode (x: string):<> file_mode

(* ****** ****** *)

fun open_fileref_exn
  (path: string, fm: file_mode):<!exn> FILEref
// end of [open_fileref_exn]

fun open_fileref_opt
  (path: string, fm: file_mode):<!exn> Option_vt (FILEref)
// end of [open_fileref_opt]

(* ****** ****** *)

fun close_fileref (r: FILEref): void

(* ****** ****** *)

#if VERBOSE_PRELUDE #then
#print "Loading [filebas.sats] finishes!\n"
#endif // end of [VERBOSE_PRELUDE]

(* ****** ****** *)

(* end of [filebas.sats] *)
