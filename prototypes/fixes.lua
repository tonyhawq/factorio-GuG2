local du = require("dutil")

du.recipe"wooden-chest".hidden = false
du.recipe"wooden-chest".enabled = true

du.inserter"mechanical-inserter".order = "a[basic]-a"
du.inserter"burner-inserter".order =     "a[basic]-b"
du.inserter"steam-inserter".order =      "a[basic]-c"
du.inserter"inserter".order =             "b[electric]-a"
du.inserter"long-handed-inserter".order = "b[electric]-b"
du.inserter"fast-inserter".order =        "b[electric]-c"

du.recipe"configurable-valve":show():set_ingredients{{type="item", name="mechanical-inserter", amount=1}, {type="item", name="small-tank", amount=1}}:set_unlock("fluid-handling")


