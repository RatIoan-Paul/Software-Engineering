method between (p: int, r: int) returns (q: int)
  requires r - p > 1
  ensures p < q < r
{
  q := p + 1;
  // 1. Ce face programul? Care este precondiția? Care este postcondiția?
  // Programul returnează un număr q care este strict între p și r.
  // Precondiția este r - p > 1, ceea ce înseamnă că diferența dintre `r` și p trebuie să fie mai mare de 1.
  // Postcondiția este p < q < r, ceea ce garantează că q va fi între p și r.

  // 2. Ce se întâmplă dacă schimbi corpul metodei cu q := p + 2? Dă un contraexemplu.
  // Dacă schimbi linia q := p + 1 cu q := p + 2, postcondiția p < q < r ar putea fi încălcată.
  // Contraexemplu: Dacă p = 1 și r = 3, atunci q := p + 2 va da q = 3. În acest caz, p < q < r nu este îndeplinit deoarece q nu este strict mai mic decât r.

  // 3. Ce se întâmplă dacă schimbi precondiția cu r - p >= 1? Dă un contraexemplu.
  // Dacă schimbi precondiția în r - p >= 1, postcondiția p < q < r ar putea fi încălcată.
  // Contraexemplu: Dacă p = 1 și r = 2, atunci q := p + 1 va da q = 2. În acest caz, p < q < r nu este îndeplinit deoarece q nu este strict mai mic decât r.
}
