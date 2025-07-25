#let name = "Dmitry Belousov"
#let contacts = (
  ("mailto:me@beldmian.ru", "me@beldmian.ru"),
  ("https://t.me/beldmian", "t.me/beldmian"),
  ("https://github.com/beldmian", "github.com/beldmian")
)

#let work_experience_title = "Work Experience"
#let commercial_experience = "Commercial Experience"
#let non_commercial_experience = "Non-Commercial Experience"

#let work_experiences = (
  (
    "Middle Golang Developer",
    "JSC \"NPO \"Echelon\"",
    "2023-present",
    (
      "Participation in the development of software products in the field of information and computer security using the Go programming language",
      "Development and optimization of mechanisms for collecting data from open sources",
    ),
    ()
  ),
  // (
  //   "Teaching Assistant",
  //   "Olympiad Training Center \"Shmel\"",
  //   "2021---2022",
  //   (
  //     "Assistance in conducting classes on olympiad mathematics",
  //     "Assistance with checking assignments on olympiad mathematics",
  //   ),
  // ),
)

#let non_commercial_experiences = (
  (
    "Backend Developer",
    "Open Source",
    "2017-present",
    (
      "Participation in hackathons (1st place at Hack The Railway 2021, 1st place at VTB API Hack 2022, etc)",
      "Development of Open Source projects and contributions to large ones",
    ),
    (
      ("https://github.com/google/cel-go/pull/1199", "google/cel-go"),
      ("https://github.com/beldmian/kuznechik", "beldmian/kuznechik"),
      ("https://github.com/beldmian/kuznechik.zig", "beldmian/kuznechik.zig"),
    )
  ),
)

#let skills_title = "Key Skills"
#let skills = (
  (
    "Programming Languages:",
    "Go + C + Zig + OCaml + Python"
  ),
  (
    "Languages:",
    "Russian (Native) + English (B2)"
  ),
  (
    "Technologies:",
    "HTTP(S) + Linux + Git + Docker + REST"
  ),
  (
    "Software:",
    "Neovim + tmux"
  ),
)

#let education_title = "Education"
#let educations = (
  (
    "National Research University Higher School of Economics (HSE)",
    "2024-2026",
    "Additional Professional Education (Minor), Bioinformatics",
  ),
  (
    "National Research University Higher School of Economics (HSE)",
    "2023-2027",
    "Bachelor's Degree, Business Informatics",
  ),
)

#let projects_title = "Projects"
#let projects = (
  (
    "kuznechik",
    "2024-2025",
    "Efficient implementation of the \"Kuznechik\" cipher in Ocaml and Zig",
    (
      ("https://github.com/beldmian/kuznechik", "github (ocaml)"),
      ("https://github.com/beldmian/kuznechik.zig", "github (zig)"),
      ("https://www.altlinux.org/OSS-GOST-Crypto", "altlinux_wiki"),
    ),
    (""),
  ),
  (
    "Fault-tolerant data replication layer between CEPH clusters",
    "2023",
    "Data replication service based on S3 API with implementation of encryption using GOST algorithms",
    (),
    ("VTB API Hackathon 2023", "Finalist"),
  ),
  (
    "colorblinder",
    "2023",
    "Service for filtering mpeg-dash streams and VoD content for people with visual impairments",
    (
      ("https://github.com/beldmian/colorblinder", "github"),
      ("https://habr.com/ru/articles/757240", "habr"),
    ),
    ("True Tech Hack 2023", "Finalist"),
  ),
  (
    "Tool for ensuring dynamic format-logical control of interaction between systems using the SOAP protocol",
    "2022",
    "Middleware service for the SOAP protocol with validation of the hierarchy of XMLNS schemas with \"hot replacement\"",
    (),
    ("VTB API Hackathon 2022", "1st place"),
  ),
  (
    "yastation",
    "2022",
    "CLI client for managing Yandex music playback devices",
    (
      ("https://github.com/beldmian/yastation", "github"),
      ("https://habr.com/ru/articles/657657/", "habr"),
    ),
    (),
  ),
)
