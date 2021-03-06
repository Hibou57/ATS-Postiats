(* ****** ****** *)
(*
** For writing ATS code
** that translates into Clojure
*)
(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define
ATS_EXTERN_PREFIX "ats2cljpre_ML_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME\
/contrib/libatscc/ATS2-0.3.2"
//
#staload "./../../basics_clj.sats"
//
#include "{$LIBATSCC}/SATS/ML/option0.sats"
//
(* ****** ****** *)
//
fun{a:t0p}
fprint_option0
  (CLJfilr, option0(INV(a))): void = "mac#%"
//
overload fprint with fprint_option0 of 100
//
(* ****** ****** *)

(* end of [option0.sats] *)
