
# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
visualization: {
  id: "Custom_Chord"
  label: "Custom_Chord"
  dependencies: ["https://d3js.org/d3.v3.min.js"]
  file: "customviz/chord.js"
}
