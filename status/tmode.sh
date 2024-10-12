show_tmode() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_tmode_icon" "")
  color=$(get_tmux_option "@catppuccin_tmode_color" "$thm_magenta")
  text=$(get_tmux_option "@catppuccin_tmode_text" "#(whoami)")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
