#let name = "Белоусов Дмитрий Анатольевич"
#let contacts = (
  ("mailto:me@beldmian.ru", "me@beldmian.ru"),
  ("https://t.me/beldmian", "t.me/beldmian"),
  ("https://github.com/beldmian", "github.com/beldmian")
)

#let work_experience_title = "Опыт работы"
#let commercial_experience = "Коммерческий опыт"
#let non_commercial_experience = "Некоммерческий опыт"

#let work_experiences = (
  (
    "Middle Golang разработчик",
    "АО \"НПО \"Эшелон\"",
    "2023---н.в.",
    (
      "Участие в разработке программных продуктов в области информационной и компьютерной безопасности на языке программирования Go",
      "Разработка и оптимизация механизмов сбора данных из открытых источников",
    ),
  ),
  // (
  //   "Помощник преподавателя",
  //   "Центр олимпиадной подготовки \"Шмель\"",
  //   "2021---2022",
  //   (
  //     "Помощь в проведении занятий по олимпиадной математике",
  //     "Помощь с проверкой заданий по олимпиадной математике",
  //   ),
  // ),
)

#let non_commercial_experiences = (
  (
    "Backend разработчик",
    "Github / Open Source",
    "2017---н.в.",
    (
      "Участие в хакатонах (1 место на Hack The Railway 2021, 1 место на VTB API Hack 2022, etc)",
      "Разработка Open Source проектов",
    ),
  ),
)

#let skills_title = "Ключевые навыки"
#let skills = (
  (
    "Языки программирования:",
    "Go + C + Zig + OCaml + Python"
  ),
  (
    "Языки:",
    "Русский + Английский (B2)"
  ),
  (
    "Технологии:",
    "HTTP(S) + Linux + Git + Docker + REST"
  ),
  (
    "ПО:",
    "Neovim + tmux"
  ),
)

#let education_title = "Образование"
#let educations = (
  (
    "Национальный исследовательский университет «Высшая школа экономики» (НИУ ВШЭ)",
    "2024-2026",
    "ДПО (Minor), Биоинформатика",
  ),
  (
    "Национальный исследовательский университет «Высшая школа экономики» (НИУ ВШЭ)",
    "2023-2027",
    "Бакалавр, Бизнес-информатика",
  ),
)

#let projects_title = "Проекты"
#let projects = (
  (
    "kuznechik",
    "2024-2025",
    "Эффективная реализация шифра \"Кузнечик\" на Ocaml и Zig",
    (
      ("https://github.com/beldmian/kuznechik", "github (ocaml)"),
      ("https://github.com/beldmian/kuznechik.zig", "github (zig)"),
      ("https://www.altlinux.org/OSS-GOST-Crypto", "altlinux_wiki"),
    ),
    (""),
  ),
  (
    "Отказоустойчивый слой репликации данных между кластерами CEPH",
    "2023",
    "Сервис репликации данных на основе S3 API с реализацией шифрования алгоритмами ГОСТ",
    (),
    ("VTB API Hackathon 2023", "Финалист"),
  ),
  (
    "colorblinder",
    "2023",
    "Сервис фильтрации mpeg-dash стримов и VoD контента для людей с особенностями зрения",
    (
      ("https://github.com/beldmian/colorblinder", "github"),
      ("https://habr.com/ru/articles/757240", "habr"),
    ),
    ("True Tech Hack 2023", "Финалист"),
  ),
  (
    "Инструмент для обеспечения динамического форматно-логического контроля взаимодействия между системами с использованием протокола SOAP",
    "2022",
    "Middleware-сервис для протокола SOAP с валидацией иерархии XMLNS-схем с \"горячей заменой\"",
    (),
    ("VTB API Hackathon 2022", "1 место"),
  ),
  (
    "yastation",
    "2022",
    "CLI-клиент для управления устройствами воспроизведения музыки от \"Яндкес\"",
    (
      ("https://github.com/beldmian/yastation", "github"),
      ("https://habr.com/ru/articles/657657/", "habr"),
    ),
    (),
  ),
)
