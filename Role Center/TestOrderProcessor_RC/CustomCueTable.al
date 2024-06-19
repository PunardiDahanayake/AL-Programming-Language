table 50103 "CustomCueTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[20])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; BlockedCustomers; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Customer where(Blocked = filter(All)));
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}