show_zoom() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_zoom_icon" "")
  color=$(get_tmux_option "@catppuccin_zoom_color" "$thm_magenta")
  text=$(get_tmux_option "@catppuccin_zoom_text" "#(whoami)")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
