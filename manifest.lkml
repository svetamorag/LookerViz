
# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
visualization: {
  id: "Custom_Chord"
  label: "Custom Chord"
  dependencies: ["https://d3js.org/d3.v4.min.js"]
  file: "customviz/chord.js"
}
