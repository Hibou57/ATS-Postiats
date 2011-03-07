(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(*                              Hongwei Xi                             *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2011-20?? Hongwei Xi, Boston University
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
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
// Start Time: March, 2011
//
(* ****** ****** *)
//
// HX: array-based resizable queue implementation
//
(* ****** ****** *)

absviewtype
queueref (a:viewt@ype+) = ptr // boxed

(* ****** ****** *)

fun{a:viewt@ype}
queueref_make {m:pos} (m: size_t m): queueref (a)

fun queueref_free {a:t@ype} (Q: queueref a): void

(* ****** ****** *)

fun queueref_size {a:viewt@ype} (Q: !queueref a): size_t

(* ****** ****** *)

exception Subscript of ()

fun{a:t@ype}
queueref_get_elt_at_exn
  (Q: !queueref a, i: size_t): a
// end of [queueref_get_elt_at_exn]

fun{a:t@ype}
queueref_set_elt_at_exn
  (Q: !queueref a, i: size_t, x: a): void
// end of [queueref_set_elt_at_exn]

(* ****** ****** *)

fun{a:viewt@ype}
queueref_enque (Q: !queueref a, x: a): void

fun{a:viewt@ype}
queueref_enque_many {k:nat} (
  Q: !queueref a, k: size_t k, xs: &(@[a][k]) >> @[a?!][k]
) : void // end of [queueref_add_many]

(* ****** ****** *)

fun{a:viewt@ype}
queueref_deque (
  Q: !queueref a, x: &a? >> opt (a, b)
) : #[b:bool] bool b

fun{a:viewt@ype}
queueref_deque_many
  {k:nat} {l:addr} (
  pf: !array_v (a?, k, l) >> arrayopt_v (a, k, l, b)
| Q: !queueref a, p: ptr l, k: size_t k
) : #[b:bool] bool b

(* ****** ****** *)

fun{a:t@ype}
queueref_clear (Q: !queueref a, k: size_t): void

(* ****** ****** *)

(* end of [pats_queueref.sats] *)
