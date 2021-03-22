CREATE TABLE [dbo].[area](
    [area_id] INT            IDENTITY(1,1) NOT NULL PRIMARY KEY, --Area Identifier
    [name]    NVARCAHR(50)   NOT NULL                            --Area Name
);

CREATE TABLE [dbo].[unit](
    [unit_id] INT              NOT NULL PRIMARY KEY, --Unit Identifier (Number is programmed into unit)
    [name]    NVARCAHR(50)     NOT NULL,             --Name of water meter consumer
    [address] NVARCAHR(50)     NOT NULL,             --Address of water meter
    [comment] NVARCAHR(50)     NOT NULL,             --Comment
);

CREATE TABLE [dbo].[area_unit](
    [area_id] INT     NOT NULL REFERENCES [dbo].[area] ([area_id]),  --Unit Identifier
    [unit_id] INT     NOT NULL REFERENCES [dbo].[unit] ([unit_id]),  --Area Identifier
    PRIMARY KEY ([area_id], [unit_id]),
);

CREATE TABLE [dbo].[unit_reading](
    [id]            INT       IDENTITY(1,1) NOT NULL PRIMARY KEY,           --Sequential ID
    [unit_id]       INT       NOT NULL REFERENCES [dbo].[unit] ([unit_id]), --Unit Identifier
    [reading_date]  DATE      NOT NULL,                                     --Reading Date
    [reading_value] BINARY(5) NOT NULL,                                     --Reading Value in BCD. 1 == 0.001 litres
    UNIQUE ([area_id], [reading_date])
);
