unit uGridValue;

interface
uses Variants, cxGridDBTableView, cxGridCustomTableView;

procedure GetCurrentGrid_ValueRowCol(AGridView: TcxGridDBTableView; AItemName: String; var Value: Variant; var ARow, ACol: Integer); overload;
procedure GetCurrentGrid_ValueRowCol(AGridView: TcxGridDBTableView; AItem: TcxCustomGridTableItem; var Value: Variant; var ARow, ACol: Integer); overload;
procedure GetCurrentGrid_Value(AGridView: TcxGridDBTableView; AItem: TcxCustomGridTableItem; var Value: Variant);

implementation

procedure GetCurrentGrid_ValueRowCol(AGridView: TcxGridDBTableView; AItemName: String; var Value: Variant; var ARow, ACol: Integer);
var
  Is_Filtering: boolean;
  vItem: TcxCustomGridTableItem;
  vCount: Integer;
  vSelectedRecordCount: Integer;
begin
  vItem := AGridView.FindItemByName(AItemName);
  if vItem = nil then
  begin
    Value := Null;
    ARow := -1;
    ACol := -1;
    Exit;
  end;

  if (ARow = -1) then
  begin
    Value := Null;

    vSelectedRecordCount := AGridView.Controller.SelectedRecordCount;
    if vSelectedRecordCount = 0 then
      Exit;
    ARow := AGridView.Controller.SelectedRecords[0].RecordIndex;
    if ARow < 0 then
    begin
      Value := Null;
      ARow := -1;
      ACol := -1;
      Exit;
    end;
  end;

  ACol := AGridView.IndexOfItem(vItem);

  Value := AGridView.DataController.GetValue(ARow, ACol);
end;

procedure GetCurrentGrid_ValueRowCol(AGridView: TcxGridDBTableView; AItem: TcxCustomGridTableItem; var Value: Variant; var ARow, ACol: Integer);
var
  vCount: Integer;
  vSelectedRecordCount: Integer;
begin
  if AItem = nil then
  begin
    Value := Null;
    ARow := -1;
    ACol := -1;
    Exit;
  end;

  if (ARow = -1) then
  begin
    Value := Null;

    vSelectedRecordCount := AGridView.Controller.SelectedRecordCount;
    if vSelectedRecordCount = 0 then
      Exit;

    ARow := AGridView.Controller.SelectedRecords[0].RecordIndex;
    if ARow < 0 then
    begin
      Value := Null;
      ARow := -1;
      ACol := -1;
      Exit;
    end;
  end;

  ACol := AGridView.IndexOfItem(AItem);
  if ACol = -1 then
  begin
    Value := Null;
    ARow := -1;
    ACol := -1;
    Exit;
  end;

  Value := AGridView.DataController.GetValue(ARow, ACol);
end;

procedure GetCurrentGrid_Value(AGridView: TcxGridDBTableView; AItem: TcxCustomGridTableItem; var Value: Variant);
var
  vRow: Integer;
  vCol: Integer;
begin
  vRow := -1;
  vCol := -1;
  GetCurrentGrid_ValueRowCol(AGridView, AItem, Value, vRow, vCol);
end;

end.
