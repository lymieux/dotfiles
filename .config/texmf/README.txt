LaTeX package directory:
~~~~~~~~~~~~~~~~~~~~~~~
Installation directions:
  `git clone` packages in output of `kpsewhich -var-value TEXMFHOME`/tex/latex
  -  My .config/fish/variables has it set to:
  -    set -x TEXMFHOME "~/.config/texmf"
  -  This mean you'd clone in:
  -    `git clone <url> ~/.config/texmf/tex/latex/REPONAME`
  Then run `texhash`

Installed packages:
  https://github.com/tecosaur/BMC
  https://github.com/HarveySheppard/yLaTeX
