# Working notes

## 2026-01-30

I wanted to use open source fonts to avoid problems building on other computers; this
would enable e.g. typsetting on GitHub CI.

- [Inter](https://rsms.me/inter/) is a nice alternative I found to Helvetica Neue
- [Jost](https://indestructibletype.com/Jost.html) is a nice alternative to Futura.
  The trouble here is that the actual font is "Jost*", with an asterisk in the name.
  This causes [problems for LaTeX](https://github.com/latex3/fontspec/issues/437), so I
  won't be able to use it from a system install.  Instead, I'm giving fontspec the path
  to a vendored copy of the .ttf file I want.


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
- [ ] Add skills from 2022 CV (?), or maybe in overview
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
