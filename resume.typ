#show link: underline
#show heading: set block(above: 2em)

#set page("us-letter")
#set par(justify: true)
#let separator() = {
  v(-0.1em)
  line(length: 100%, stroke: 1pt)
  v(-0.4em)
}

#grid(
  columns: (1fr, 1fr),
  rows: (auto, auto),
  gutter: 0.67em,

  align(left)[= Nick Miller],
  align(right + bottom)[Traverse City, MI],

  grid.cell(colspan: 2, [
    #link("mailto:nick@njm.dev")[nick\@njm.dev] | 
    #link("https://github.com/jadefish")[github.com/jadefish] |
    #link("https://linkedin.com/in/nickjm")[linkedin.com/in/nickjm]
  ])
)

== Overview
#separator()

Software engineer with 10 years of experience building robust solutions through
simple, maintainable code that solves real problems for real users.
I've helped scale systems and businesses to millions of users and led
cross-functional efforts to deliver high-impact products that move the dial and
drive meaningful results.

== Experience
#separator()

*Senior Software Engineer #h(1fr) Evvnt Inc. #h(1fr) Sep 2021 – present*

As an integral part of the small team at Evvnt, I wear many hats and frequently
design, shape, and ship core features, fixes, and projects using Ruby on Rails,
PostgreSQL, Redis, and AWS. Notably:

- Led team in rewrite of mobile box office app, increasing on-site ticket sale
  revenue by 30% and dramatically improving user experience and reliability.
- Replaced aging suite of Capybara tests with Playwright and cypress-on-rails,
  cutting CI test suite runtime in half and enabling QA to write automated
  tests.
- Replaced significant portions of our in-house UI framework with Hotwire view
  components (Turbo & Stimulus).
- Architected and implemented self-service features for event creators,
  automating event and user acquisition without sales intervention.
- Integrated Apple Pay and Google Pay for online ticket and merchandise sales,
  reducing checkout time and friction.

#v(1.5em)

*Software Engineer #h(1fr) RJG, Inc. #h(1fr) Jun 2020 – Sep 2021*

Developed features and fixes for Java and AngularJS injection molding
software deployed to air-gapped, on-site installations.

- Worked closely with the product and hardware teams to implement support for
  Smartflow mold temperature regulators.
- Spearheaded effort to identify and more closely align core product with key
  domain concepts.
- Dockerized the majority of the core product, enabling local development and
  reducing turnaround time for features and fixes.

#v(1.5em)

*Software Engineer #h(1fr) Geotix #h(1fr) Sep 2018 – Jun 2020*

Leveraged Ruby on Rails, PostgreSQL, Redis, and AWS to deliver performant features
and fixes to help scale the business to 50k+ monthly ticket sales.

- Developed an automated onboarding system for terms of use and privacy
  policies, erasing error-prone manual processes.
- Implemented major enhancements, features, and fixes to our open-source Ruby
  view layer DSL and front-end framework, COPRL.
- Overhauled the event creator onboarding experience, unifying fragmented processes
  and significantly improving UX.
- Created an integration tool using AWS Lambda for GitHub, Pivotal Tracker, and
  Jenkins to bring clarity to our CD process and empowering QA to test code 
  faster and with more confidence.

#v(1.5em)

*Software Engineer #h(1fr) MacUpdate, LLC #h(1fr) Feb 2015 – Sep 2018*

As a key member of the distributed team for the largest third-party Mac software
distribution and sales platform, I worked across the organization to deliver 
solutions to foundational business problems using PHP, AWS, and MySQL.

- Led cross-functional team in shaping and rewriting our internal CRM and sales
  backend, greatly reducing friction and resources needed to create and launch
  sales and promotions.
- Designed and implemented a performance-critical REST API using Laravel
  for our next-generation desktop product.
- Implemented major site-wide functionality for GDPR protections, leading our
  team in creating query and data management tools to meet and exceed legal
  requirements.
- Conducted audit of and executed major refactor for site-wide caching
  infrastructure, empowering engineering to ship better features faster.
- Rewrote app bundle promotion systems, enabling us to launch promotions with
  with little-to-no Engineering intervention and allowing for automated
  deployment of simultaneous live promotions.
- Audited our web and desktop products for security, implementing fixes for
  critical vulnerabilities (XSS, SQL injection, access controls).


== Skills & Technologies
#separator()

- *Languages*: Ruby, Java, PHP, JavaScript, TypeScript, HTML, CSS, SQL
- *Frameworks & Libraries*: Ruby on Rails, Hotwire (Turbo, Stimulus), RSpec,
  Capybara, Playwright, Laravel, SwiftUI
- *DevOps & Tools*: Docker, AWS (Lambda, S3, ECS, EC2), Heroku, Jenkins, Git, GitHub Actions
- *Databases & Caching*: PostgreSQL, MySQL, Redis
- *Other*: REST APIs, GitHub integrations, GDPR compliance, event-driven
  systems, mobile development


== Education
#separator()

*The University of Texas at Dallas* #h(1fr) May 2015 \

- B.S. Software Engineering, B.S. Computer Science
- GPA: 3.7
