# Statement (honest scope)

**Author:** Benjamin Stanley Frohman  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache-2.0

**Theorem (fourfold form, literature).**
Let \(X \subset \mathbb{P}^5\) be a very general smooth hypersurface of degree \(d \ge 3\). Monodromy on the primitive part of \(H^4\) leaves only the powers of the hyperplane class invariant, and a Hodge class on a very general fibre is invariant. Therefore

\[
H^4(X, \mathbb{Q}) \cap H^{2,2}(X) = \mathbb{Q}\, h^2.
\]

**Corollary.** On that host \(\Delta_{\mathrm{Hdg}}=\emptyset\), hence \(\Delta_{\mathrm{miss}}=\emptyset\). Rational Hodge holds because the only class is \(h^2\), the class of \(X \cap \mathbb{P}^3\).

**Degree.** \(d \ge 3\) is the vanishing range. It already includes cubics, quartics, and quintics. It fails for quadrics: every smooth quadric fourfold contains planes, and that extra class moves over the whole family. The hypothesis \(6 \le \mathrm{degree}\) in `NoetherLefschetz/Basic.lean` is a sufficient bound kept by the axiom. It is not the sharp threshold. In recent Hodge-locus papers the number 6 is a threshold for atypicality of components, which is a different statement.

**What the locus is.** Inside the space of smooth sextics, \(\{\,X : \dim(H^4(X,\mathbb{Q})\cap H^{2,2}(X)) > 1\,\}\) is a countable union of proper subvarieties. Staying of type \((2,2)\) imposes orthogonality to \(H^{3,1}\), and \(h^{3,1}=426\) for a sextic, so each component is thin. The complex number \(h^{2,2}=1752\) does not jump. Only the rational subspace inside it jumps.

**Where \(V(F)\) sits.** The three-chain sextic contains the plane \(\Pi=V(x_3,x_4,x_5)\). It is a special point of the locus, not a very general sextic. The extra direction

\[
\beta = h^2 - 6[\Pi] = [S] - 5[\Pi]
\]

is an integral algebraic class. This component is an algebraic-cycle component. The jump is real and the class is hit. That is the opposite of a miss.

**Non-corollary.** Noether–Lefschetz does not build cycles on the special fibre. It says that off the locus there are no extra classes to build. It does not prove Hodge for:

- a quadric fourfold,
- the Fermat quartic fourfold (special, extra planes),
- \(V(F)\), or any sextic containing a plane,
- a fourfold that is not a very general hypersurface of degree \(d \ge 3\) in \(\mathbb{P}^5\).

The Clay sentence is the special fibre, and every variety outside this family.

References to record, not to claim as this author's theorems: Lefschetz 1921; Griffiths; Carlson–Green–Griffiths–Harris; Voisin, *Hodge Theory and Complex Algebraic Geometry*.
