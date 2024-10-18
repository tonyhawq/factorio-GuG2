local styles = data.raw["gui-style"].default

styles["g2_sized_green_button"] = table.deepcopy(styles["green_button"])
styles["g2_sized_green_button"].minimal_height = styles["confirm_button"].minimal_height
styles["g2_sized_green_button"].minimal_width = styles["confirm_button"].minimal_width

styles["g2_sized_red_button"] = table.deepcopy(styles["red_button"])
styles["g2_sized_red_button"].minimal_height = styles["confirm_button"].minimal_height
styles["g2_sized_red_button"].minimal_width = styles["confirm_button"].minimal_width

styles["g2_generic_progressbar"] = {
    type="progressbar_style",
    bar_width=30,
    horizontally_stretchable="on",
    font="default-bold",
    vertical_align="center",
    embed_text_in_bar=true,
    font_color={r=0.901, g=0.89, b=0.901},
    filled_font_color={r=0, g=0, b=0},
    bar_background=table.deepcopy(data.raw["gui-style"]["default"]["progressbar"].bar_background)
}