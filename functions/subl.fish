# SYNOPSIS
#   atom [options] [file ...]        edit the given files
#   atom [options] [directory ...]   open the given directories
#   atom [options]                   edit stdin
#

function atom -d "Open Atom"
  set -l opts
  set -l files
  set -l projects

  # we'll just ignore anything that looks like an option string...
  for file in $argv
    switch $file
      case '-*'
        set opts $opts $file

      case '.*' '*'
        set files $files $file
    end
  end

  if set -e ATOM_PATH
    eval $ATOM_PATH $argv
  else if command -sq atom
    command atom $argv
  else if test -d "/Applications/Atom.app"
    "/Applications/Atom.app/Contents/MacOS/Atom" $argv
  else if test -x "/usr/share/atom"
    "/usr/share/atom" $argv
  else
    echo 'No Atom installation found' >&2
    echo 'Add `atom` to your $PATH or set $ATOM_PATH' >&2
    return 1
  end
end
