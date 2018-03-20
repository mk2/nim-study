import lesspkg/ncurses

proc main() =
  var scr = initscr()
  defer: endwin()
  echo "Finished"

main()
