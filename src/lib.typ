#import "colors.typ" as colors
#import "helpers.typ" as helpers
#import "icons.typ" as icons
#import "coverletter.typ": coverletter, hiring-entity-info, letter-heading
#import "resume.typ": resume, resume-item, resume-entry, resume-gpa, resume-certification, resume-skill-category, resume-skill-values, resume-skill-item, resume-skill-grid, justified-header, secondary-justified-header, secondary-right-header, tertiary-right-header

/// Show a link with an icon, specifically for Github projects
/// *Example*
/// #example(`resume.github-link("ptsouchlos/awesome-resume")`)
/// - github-path (string): The path to the Github project (e.g. "ptsouchlos/awesome-resume")
/// -> none
#let github-link(github-path) = {
  set box(height: 11pt)

  align(right + horizon)[
    #icons.fa-icon("github", fill: colors.darkgray) #h(2pt) #link(
      "https://github.com/" + github-path,
      github-path,
    )
  ]
}
