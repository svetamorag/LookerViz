d3.select("body").append("div").attr('id', 'my_dataviz')
// create the svg area
var svg = d3.select("#my_dataviz")
  .append("svg")
    .attr("width", 440)
    .attr("height", 440)
  .append("g")
    .attr("transform", "translate(220,220)")

// create a matrix
var matrix = [
  [0,  5871, 8916, 2868],
  [ 1951, 0, 2060, 6171],
  [ 8010, 16145, 0, 8045],
  [ 1013,   990,  940, 0]
];

// 4 groups, so create a vector of 4 colors
var colors = [ "#440154ff", "#31668dff", "#37b578ff", "#fde725ff"]

// give this matrix to d3.chord(): it will calculates all the info we need to draw arc and ribbon
var res = d3.chord()
    .padAngle(0.05)
    .sortSubgroups(d3.descending)
    (matrix)

// add the groups on the outer part of the circle
svg
  .datum(res)
  .append("g")
  .selectAll("g")
  .data(function(d) { return d.groups; })
  .enter()
  .append("g")
  .append("path")
    .style("fill", function(d,i){ return colors[i] })
    .style("stroke", "black")
    .attr("d", d3.arc()
      .innerRadius(200)
      .outerRadius(210)
    )

// Add the links between groups
svg
  .datum(res)
  .append("g")
  .selectAll("path")
  .data(function(d) { return d; })
  .enter()
  .append("path")
    .attr("d", d3.ribbon()
      .radius(200)
    )
    .style("fill", function(d){ return(colors[d.source.index]) }) // colors depend on the source group. Change to target otherwise.
    .style("stroke", "black");
