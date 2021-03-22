# Test Site

We are building a website to display readings of water meter units, the units are organized into areas.

## Tasks
1. Add columns for the last reading (in litres) and date to the unit list page (`Default.aspx`).
   **Note:** It is recommended to review the comments in the database schema.
2. Add a new page with reading history for a unit.
3. The unit reading history page should be accessed by clicking on row of the unit on the unit list page.
4. The unit reading history page should have an option to choose the reading range. The default range should be 1 month ago until today.
5. The unit reading history page should contain the following columns:
   1. Unit Number
   2. Unit Name
   3. Reading Date
   4. Reading (in litres)
6. The unit reading history page should show the consumption (in litres) for the chosen range (last reading – first reading).
   **Note:** The reading resets after reading `9999999.999` litres (i.e. `9999999.999` is followed by `0.000`).
7. All Changes should be committed to git.
