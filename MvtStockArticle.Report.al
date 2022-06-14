report 50108 MvtStockArticle
{
    UsageCategory = Administration;
    ApplicationArea = All;

    // Use an RDL layout.
    DefaultLayout = RDLC;

    // Specify the name of the file that the report will use for the layout.
    RDLCLayout = 'MvtStockArticle.rdl';

    dataset
    {
        dataitem(Item; "Item")
        {
            //column(ColumnName; SourceFieldName)
            //{

            //}
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //    ApplicationArea = All;

                    //}
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var



        ExportExcel: Boolean;
        PrintLot: Boolean;
        SkipLineZero: Boolean;
        MvtStock: Boolean;
        IgnorerLigne: Boolean;
        gSaveExcel: Boolean;

        LocationFilter: Code[30];
        LocationCode: Code[20];
        BinFilter: Code[20];

        StartDate: Date;
        EndDate: Date;
        LastDateModif: Date;

        RowNo: Integer;
        ColNo: Integer;

        ExcelFileName: Text[250];
        ExcelSheetName: Text[31];
        SkipLineZeroFilter: Text[1];
        SkipLineZeroFilter2: Text[1];
        ItemFilters: Text[250];
        DocumentOrigine: Text;
        CodeMotif: Text;

        InvBefore: Decimal;
        InvPos: Decimal;
        InvNeg: Decimal;
        ItemInvPos: Decimal;
        InvAfter: Decimal;
        ItemInvBefore: Decimal;
        ItemInvNeg: Decimal;
        ItemInvAfter: Decimal;
        TotalNeg: Decimal;
        TotalPos: Decimal;
        PositifEntry: Decimal;
        NegatifEntry: Decimal;
        Total: Decimal;
        ValeurStock: Decimal;

        ItemLedgerEntry: Record "Item Ledger Entry";
        WarehouseEntry: Record "Warehouse Entry";
        RecWarehouseEntry: Record "Warehouse Entry";
        RecPositifInvent: Record "Item";
        RecNegatifInvent: Record "Item";
        RecItem: Record "Item";
        ExcelBuf: Record "Excel Buffer";
}