----
-- Test cases for xlsxwriter.lua.
--
-- Test the worksheet set_x_pagebreaks() methods.
--
-- Copyright 2014, John McNamara, jmcnamara@cpan.org
--

local Workbook = require "xlsxwriter.workbook"

local workbook  = Workbook:new("test_page_breaks06.xlsx")
local worksheet = workbook:add_worksheet()

worksheet:set_h_pagebreaks({1, 5, 13, 8, 8, 8})
worksheet:set_v_pagebreaks({8, 3, 1, 0})

worksheet:write_string("A1", "Foo")

workbook:close()
