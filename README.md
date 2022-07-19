#Issue

If you run the scene PartiesPane.tscn and click on the red or blue squares it will open a custom color picker window. Signals, such as mouse_entered do not work on the color rect or area 2d. Neither does button_up/down work if I change the ColorSquare.tscn to a Button node.

However, if run from the scene BColorPickerButton.tscn, all signals are working.
