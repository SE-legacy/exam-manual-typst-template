#let make_toc = () => {
  show outline.entry: it => {
    it
  }
  outline(title: [СОДЕРЖАНИЕ])
  pagebreak()
}

#let generate_title() = {
  set align(center)
  v(1.5cm)
  text(weight: "bold", upper("Название предмета") + "\n")
  [*(номер семеста) семестр*]
  par("Материалы для подготовки к зачету/экзамену")
  v(1.5cm)
  set align(left)
  text("Смирнов Егор" + "\n")
  text("Рудяк Артем" + "\n")
  text("Соловьев Артем" + "\n")
  text("Храмов Александр" + "\n")
  text("Толстов Роберт" + "\n")
  text("Григорьев Данила" + "\n")
  text("Чертков Михаил" + "\n")
  text("Лазарева Виктория" + "\n")
  text("Кудяков Артём" + "\n")
  text("Карасев Вадим" + "\n")
  text("Тюменцев Радомир" + "\n")
  text("Железко Александр" + "\n")
  text("Архипов Иван" + "\n")
  text("Леонтьев Михаил" + "\n")
  text("Потапкина Рита" + "\n")
  v(1fr)
  set align(center)
  text("г. Саратов" + " " + str(datetime.today().year()))
  pagebreak()
}

#let generateAll = () => {
  generate_title()
  make_toc()
}
