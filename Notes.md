# Working notes

## 2026-03-24

- Fixed Libre Caslon Text not being available.  It's distributed under the OFL so I
  could also just vendor it.
- I'm going to try out my font option #2 at the annual review tomorrow (Inter title,
  Source Serif 4 body), but:
  - TODO: experiment with reducing the boldness of the Inter title in the same way I do
    in font option #4.


## 2026-02-01

- I was having trouble getting bold versions of my installed fonts Jost, Inter, and
  Source Serif 4 to work (`\textbf` would do nothing).
  - I'm guessing this was because XeTeX couldn't find the bold variants?  But could not
    figure it out.
  - I eventually got things to work by explicitly passing the path to each font
  - For Inter, which came as a `.ttc` (TrueType collection), I had to specify the
    feaures corresponding to each font series.  See III.4 in the fontspec docs:
    https://ctan.math.illinois.edu/macros/unicodetex/latex/fontspec/fontspec.pdf

- I'm currently relying on the font `Libre Caslon Text` being installed for font option
  #1 to work.
  - TODO: Install this font in the github action, and add it to the readme
  - Not super important since I'm not terribly wild about it as a font, though


## 2026-01-30

- I wanted to use open source fonts to avoid problems building on other computers; this
  would enable e.g. typsetting on GitHub CI.
  - [Inter](https://rsms.me/inter/) is a nice alternative I found to Helvetica Neue
  - [Jost](https://indestructibletype.com/Jost.html) is a nice alternative to Futura.
    The trouble here is that the actual font is "Jost*", with an asterisk in the name.
    This causes [problems for LaTeX](https://github.com/latex3/fontspec/issues/437), so I
    won't be able to use it from a system install.  Instead, I'm giving fontspec the path
    to a vendored copy of the .ttf file I want.

- I set up the `gh-release` GitHub action to release when I push a tagged commit.  As
  part of this, I wanted to rename `_build/resume.pdf`:
```yml
- name: Rename built PDF
  run: mv _build/resume.pdf eskew_CV.pdf
```
- This failed with a `Permission denied` error, so I just changed it to `sudo mv` and it
  seemed to work.

- It looks like `jj` doesn't have native support for pushing tags yet, so I need to run
  `git push --tags` from within a colocated repo.
  - I may also be able to just set tags from within GitHub.

- To give the `gh-release` action permission to create a release for my repository, I
  had to create a [fine-grained GitHub personal access
  token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token),
  which I called `curriculum-vitae_release`.  I've set it to expire in one year, at
  which point I'll have to do this again.
  - I set it to have access only to the `curriculum-vitae` repository
  - I clicked on "Add permissions", selected "Contents", and gave it "Read and Write"
    access.
  - I copied the token text from the page that appears after creating the token
  - In the CV repository settings, under Security/Secrets and variables/Actions, I added
    this token as a new repository secret, named "GH_RELEASE_TOKEN"
  - I can now pass the `gh-release` action this token under the `token` key with the
    syntax `${{ secrets.GH_RELEASE_TOKEN }}`

- The release process is a little awkward, since I can't simultaneously push the latest
  revision and tag.  I think the best practice is probably to `jj git push`, and then
  after do the `git push --tags`.
  - This means the latex is built twice, unfortunately.
  - I should update the github workflow to do the release separately from the latex
    build, if possible


To do:
- [x] Fix font on URLS: PWG presentation and selected code repositories
- [x] Add e.g. pytimeode to repos
- [x] Don't split repos into personal/professional
- [x] Fix smc where the first letter is capitalized (only do if acronyms are start of
  the sentence)
- [ ] Maybe pagebreak before talks and posters to avoid orphaned talk
- [x] Fix spacing around dates in talks
- [ ] Maybe use glossaries package to define WSU acronym
- [x] Include GPU programming somewhere, perhaps under current research


## 2026-01-27

Todo:
- [x] Figure out what `\smc` is supposed to do (used e.g. in Awards section)
  - It stands for "smallcaps", does what it says on the tin.
  - We had to make some modifications to make it work; specifically using the package
    `newpx`.
- [x] Fix fonts; at least get it properly bolded matching Michael's thesis
- [x] Add later scholarship to Awards section
- [x] Update Forbes Group research
- [x] Add later DAMOP talks/posters
- [x] Add Thouless conference
- [x] Add specific teaching, see 2022 CV for classes
- [x] Add skills from 2022 CV (?), or maybe in overview
- [x] Add outreach, e.g. recruitment weekend posters, CU*iP volunteering
- [ ] Verify dates on coffee hour?
- [x] Teaching and Outreach
- [ ] Include coursework?  Perhaps at end
- [ ] Add overview of interests and skills
- [x] Add WSU Showcase poster
- [x] Maybe count recruitment weekends as posters?
  - Don't think I will, since I want to list them under Outreach and they were each not
    much of a cohesive poster
- [x] Add NQN Hackathon?
- [x] Add INT workshop?
- [ ] Check on titles and authors for papers in progress
- [x] Add presentation to PWG

Papers in progress:
- See two papers on Overleaf
- Paper with Bella

Other notes:
- Michael has updated his CV on
  [CoCalc](https://cocalc.com/projects/13fd6946-fdd9-474e-a824-5ba2b0d7efda/files/Skeletons/Resume/mforbes/)
