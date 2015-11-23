/*******************************************************************
 * 版权所有： 
 * 类 名 称：ExcelHelper
 * 作    者：zk
 * 电子邮箱：77148918@QQ.com
 * 创建日期：2012/2/25 10:17:21 
 * 修改描述：从excel导入datatable时，可以导入日期类型。
 *           但对excel中的日期类型有一定要求，要求至少是yyyy/mm/dd类型日期；           
 * 修改描述：将datatable导入excel中，对类型为字符串的数字进行处理，
 *           导出数字为double类型；
 * 
 * 
 * *******************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using WindowsFormsApplication1;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using NPOI;
using NPOI.HPSF;
using NPOI.HSSF;
using NPOI.HSSF.UserModel;
using NPOI.HSSF.Util;
using NPOI.POIFS;
using NPOI.SS.Formula.Eval;
using NPOI.SS.UserModel;
using NPOI.Util;
using NPOI.SS;
using NPOI.DDF;
using NPOI.SS.Util;
using System.Collections;
using System.Text.RegularExpressions;
using NPOI.XSSF;
using NPOI.XSSF.UserModel;

namespace CommonFunction
{
    /// <summary>
    /// Class ExcelHelper.
    /// </summary>
    public class ExcelHelper
    {
        /// <summary>
        /// The wl
        /// </summary>
        private static WriteLog wl = new WriteLog();
        public delegate void CheakTheonlyHandler(string rownum, string value, string coloumnum,string tabelename, DataTable dt, ref  bool flage);
        public delegate void CheakdigitalHandler(string rownum, string value, string coloumnum, string tabelename, DataTable dt, ref  bool flage);
        public delegate void CheakTimetypeHandler(string rownum, string value, string coloumnum, string tabelename, DataTable dt, ref  bool flage);
        public delegate void CheakemptyHandler(string rownum, string value, string coloumnum, string tabelename, DataTable dt, ref  bool flage);
        public static event CheakTheonlyHandler OnCheakTheonlyEvent;
        public static event CheakdigitalHandler OnCheakdigitalEvent;
        public static event CheakTimetypeHandler OnCheakTimetypeEvent;
        public static event CheakemptyHandler OnCheakemptyEvent;
        #region 从datatable中将数据导出到excel
        /// <summary>
        /// DataTable导出到Excel的MemoryStream
        /// </summary>
        /// <param name="dtSource">源DataTable</param>
        /// <param name="strHeaderText">表头文本</param>
        /// <returns>MemoryStream.</returns>
        static MemoryStream ExportDT(DataTable dtSource, string strHeaderText)
        {
            HSSFWorkbook workbook = new HSSFWorkbook();
            HSSFSheet sheet = workbook.CreateSheet() as HSSFSheet;

            #region 右击文件 属性信息

            //{
            //    DocumentSummaryInformation dsi = PropertySetFactory.CreateDocumentSummaryInformation();
            //    dsi.Company = "http://www.yongfa365.com/";
            //    workbook.DocumentSummaryInformation = dsi;

            //    SummaryInformation si = PropertySetFactory.CreateSummaryInformation();
            //    si.Author = "柳永法"; //填加xls文件作者信息
            //    si.ApplicationName = "NPOI测试程序"; //填加xls文件创建程序信息
            //    si.LastAuthor = "柳永法2"; //填加xls文件最后保存者信息
            //    si.Comments = "说明信息"; //填加xls文件作者信息
            //    si.Title = "NPOI测试"; //填加xls文件标题信息
            //    si.Subject = "NPOI测试Demo"; //填加文件主题信息
            //    si.CreateDateTime = DateTime.Now;
            //    workbook.SummaryInformation = si;
            //}

            #endregion

            HSSFCellStyle dateStyle = workbook.CreateCellStyle() as HSSFCellStyle;
            HSSFDataFormat format = workbook.CreateDataFormat() as HSSFDataFormat;
            dateStyle.DataFormat = format.GetFormat("yyyy-mm-dd");

            //取得列宽
            int[] arrColWidth = new int[dtSource.Columns.Count];
            foreach (DataColumn item in dtSource.Columns)
            {
                arrColWidth[item.Ordinal] = Encoding.GetEncoding(936).GetBytes(item.ColumnName.ToString()).Length;
            }
            for (int i = 0; i < dtSource.Rows.Count; i++)
            {
                for (int j = 0; j < dtSource.Columns.Count; j++)
                {
                    int intTemp = Encoding.GetEncoding(936).GetBytes(dtSource.Rows[i][j].ToString()).Length;
                    if (intTemp > arrColWidth[j])
                    {
                        arrColWidth[j] = intTemp;
                    }
                }
            }
            int rowIndex = 0;

            foreach (DataRow row in dtSource.Rows)
            {
                #region 新建表，填充表头，填充列头，样式

                if (rowIndex == 65535 || rowIndex == 0)
                {
                    if (rowIndex != 0)
                    {
                        sheet = workbook.CreateSheet() as HSSFSheet;
                    }

                    #region 表头及样式

                    {
                        HSSFRow headerRow = sheet.CreateRow(0) as HSSFRow;
                        headerRow.HeightInPoints = 25;
                        headerRow.CreateCell(0).SetCellValue(strHeaderText);

                        HSSFCellStyle headStyle = workbook.CreateCellStyle() as HSSFCellStyle;
                        headStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Center;
                        HSSFFont font = workbook.CreateFont() as HSSFFont;
                        font.FontHeightInPoints = 20;
                        font.Boldweight = 700;
                        headStyle.SetFont(font);

                        headerRow.GetCell(0).CellStyle = headStyle;

                        sheet.AddMergedRegion(new Region(0, 0, 0, dtSource.Columns.Count - 1));
                        //headerRow.Dispose();
                    }

                    #endregion


                    #region 列头及样式

                    {
                        HSSFRow headerRow = sheet.CreateRow(1) as HSSFRow;


                        HSSFCellStyle headStyle = workbook.CreateCellStyle() as HSSFCellStyle;
                        headStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Center;
                        HSSFFont font = workbook.CreateFont() as HSSFFont;
                        font.FontHeightInPoints = 10;
                        font.Boldweight = 700;
                        headStyle.SetFont(font);


                        foreach (DataColumn column in dtSource.Columns)
                        {
                            headerRow.CreateCell(column.Ordinal).SetCellValue(column.ColumnName);
                            headerRow.GetCell(column.Ordinal).CellStyle = headStyle;

                            //设置列宽
                            sheet.SetColumnWidth(column.Ordinal, (arrColWidth[column.Ordinal] + 1) * 256);

                        }
                        //headerRow.Dispose();
                    }

                    #endregion

                    rowIndex = 2;
                }

                #endregion

                #region 填充内容

                HSSFRow dataRow = sheet.CreateRow(rowIndex) as HSSFRow;
                foreach (DataColumn column in dtSource.Columns)
                {
                    HSSFCell newCell = dataRow.CreateCell(column.Ordinal) as HSSFCell;

                    string drValue = row[column].ToString();

                    switch (column.DataType.ToString())
                    {
                        case "System.String": //字符串类型
                            double result;
                            if (isNumeric(drValue, out result))
                            {

                                double.TryParse(drValue, out result);
                                newCell.SetCellValue(result);
                                break;
                            }
                            else
                            {
                                newCell.SetCellValue(drValue);
                                break;
                            }

                        case "System.DateTime": //日期类型
                            DateTime dateV;
                            DateTime.TryParse(drValue, out dateV);
                            newCell.SetCellValue(dateV);

                            newCell.CellStyle = dateStyle; //格式化显示
                            break;
                        case "System.Boolean": //布尔型
                            bool boolV = false;
                            bool.TryParse(drValue, out boolV);
                            newCell.SetCellValue(boolV);
                            break;
                        case "System.Int16": //整型
                        case "System.Int32":
                        case "System.Int64":
                        case "System.Byte":
                            int intV = 0;
                            int.TryParse(drValue, out intV);
                            newCell.SetCellValue(intV);
                            break;
                        case "System.Decimal": //浮点型
                        case "System.Double":
                            double doubV = 0;
                            double.TryParse(drValue, out doubV);
                            newCell.SetCellValue(doubV);
                            break;
                        case "System.DBNull": //空值处理
                            newCell.SetCellValue("");
                            break;
                        default:
                            newCell.SetCellValue("");
                            break;
                    }

                }

                #endregion

                rowIndex++;
            }
            using (MemoryStream ms = new MemoryStream())
            {
                workbook.Write(ms);
                ms.Flush();
                ms.Position = 0;

                //sheet.Dispose();
                //workbook.Dispose();

                return ms;
            }
        }

        /// <summary>
        /// DataTable导出到Excel的MemoryStream
        /// </summary>
        /// <param name="dtSource">源DataTable</param>
        /// <param name="strHeaderText">表头文本</param>
        /// <param name="fs">The fs.</param>
        static void ExportDTI(DataTable dtSource, string strHeaderText, FileStream fs)
        {
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.CreateSheet() as XSSFSheet;

            #region 右击文件 属性信息

            //{
            //    DocumentSummaryInformation dsi = PropertySetFactory.CreateDocumentSummaryInformation();
            //    dsi.Company = "http://www.yongfa365.com/";
            //    workbook.DocumentSummaryInformation = dsi;

            //    SummaryInformation si = PropertySetFactory.CreateSummaryInformation();
            //    si.Author = "柳永法"; //填加xls文件作者信息
            //    si.ApplicationName = "NPOI测试程序"; //填加xls文件创建程序信息
            //    si.LastAuthor = "柳永法2"; //填加xls文件最后保存者信息
            //    si.Comments = "说明信息"; //填加xls文件作者信息
            //    si.Title = "NPOI测试"; //填加xls文件标题信息
            //    si.Subject = "NPOI测试Demo"; //填加文件主题信息
            //    si.CreateDateTime = DateTime.Now;
            //    workbook.SummaryInformation = si;
            //}

            #endregion

            XSSFCellStyle dateStyle = workbook.CreateCellStyle() as XSSFCellStyle;
            XSSFDataFormat format = workbook.CreateDataFormat() as XSSFDataFormat;
            dateStyle.DataFormat = format.GetFormat("yyyy-mm-dd");

            //取得列宽
            int[] arrColWidth = new int[dtSource.Columns.Count];
            foreach (DataColumn item in dtSource.Columns)
            {
                arrColWidth[item.Ordinal] = Encoding.GetEncoding(936).GetBytes(item.ColumnName.ToString()).Length;
            }
            for (int i = 0; i < dtSource.Rows.Count; i++)
            {
                for (int j = 0; j < dtSource.Columns.Count; j++)
                {
                    int intTemp = Encoding.GetEncoding(936).GetBytes(dtSource.Rows[i][j].ToString()).Length;
                    if (intTemp > arrColWidth[j])
                    {
                        arrColWidth[j] = intTemp;
                    }
                }
            }
            int rowIndex = 0;

            foreach (DataRow row in dtSource.Rows)
            {
                #region 新建表，填充表头，填充列头，样式

                if (rowIndex == 0)
                {
                    #region 表头及样式
                    //{
                    //    XSSFRow headerRow = sheet.CreateRow(0) as XSSFRow;
                    //    headerRow.HeightInPoints = 25;
                    //    headerRow.CreateCell(0).SetCellValue(strHeaderText);

                    //    XSSFCellStyle headStyle = workbook.CreateCellStyle() as XSSFCellStyle;
                    //    headStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.CENTER;
                    //    XSSFFont font = workbook.CreateFont() as XSSFFont;
                    //    font.FontHeightInPoints = 20;
                    //    font.Boldweight = 700;
                    //    headStyle.SetFont(font);

                    //    headerRow.GetCell(0).CellStyle = headStyle;

                    //    //sheet.AddMergedRegion(new Region(0, 0, 0, dtSource.Columns.Count - 1));
                    //    //headerRow.Dispose();
                    //}

                    #endregion


                    #region 列头及样式

                    {
                        XSSFRow headerRow = sheet.CreateRow(0) as XSSFRow;


                        XSSFCellStyle headStyle = workbook.CreateCellStyle() as XSSFCellStyle;
                        headStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Center;
                        XSSFFont font = workbook.CreateFont() as XSSFFont;
                        font.FontHeightInPoints = 10;
                        font.Boldweight = 700;
                        headStyle.SetFont(font);


                        foreach (DataColumn column in dtSource.Columns)
                        {
                            headerRow.CreateCell(column.Ordinal).SetCellValue(column.ColumnName);
                            headerRow.GetCell(column.Ordinal).CellStyle = headStyle;

                            //设置列宽
                            sheet.SetColumnWidth(column.Ordinal, (arrColWidth[column.Ordinal] + 1) * 256);

                        }
                        //headerRow.Dispose();
                    }

                    #endregion

                    rowIndex = 1;
                }

                #endregion

                #region 填充内容

                XSSFRow dataRow = sheet.CreateRow(rowIndex) as XSSFRow;
                foreach (DataColumn column in dtSource.Columns)
                {
                    XSSFCell newCell = dataRow.CreateCell(column.Ordinal) as XSSFCell;

                    string drValue = row[column].ToString();

                    switch (column.DataType.ToString())
                    {
                        case "System.String": //字符串类型
                            double result;
                            if (isNumeric(drValue, out result))
                            {

                                double.TryParse(drValue, out result);
                                newCell.SetCellValue(result);
                                break;
                            }
                            else
                            {
                                newCell.SetCellValue(drValue);
                                break;
                            }

                        case "System.DateTime": //日期类型
                            DateTime dateV;
                            DateTime.TryParse(drValue, out dateV);
                            newCell.SetCellValue(dateV);

                            newCell.CellStyle = dateStyle; //格式化显示
                            break;
                        case "System.Boolean": //布尔型
                            bool boolV = false;
                            bool.TryParse(drValue, out boolV);
                            newCell.SetCellValue(boolV);
                            break;
                        case "System.Int16": //整型
                        case "System.Int32":
                        case "System.Int64":
                        case "System.Byte":
                            int intV = 0;
                            int.TryParse(drValue, out intV);
                            newCell.SetCellValue(intV);
                            break;
                        case "System.Decimal": //浮点型
                        case "System.Double":
                            double doubV = 0;
                            double.TryParse(drValue, out doubV);
                            newCell.SetCellValue(doubV);
                            break;
                        case "System.DBNull": //空值处理
                            newCell.SetCellValue("");
                            break;
                        default:
                            newCell.SetCellValue("");
                            break;
                    }

                }

                #endregion

                rowIndex++;
            }
            workbook.Write(fs);
            fs.Close();
        }

        /// <summary>
        /// DataTable导出到Excel文件
        /// </summary>
        /// <param name="dtSource">源DataTable</param>
        /// <param name="strHeaderText">表头文本</param>
        /// <param name="strFileName">保存位置</param>
        public static void ExportDTtoExcel(DataTable dtSource, string strHeaderText, string strFileName)
        {
            string[] temp = strFileName.Split('.');

            if (temp[temp.Length - 1] == "xls" && dtSource.Columns.Count < 256 && dtSource.Rows.Count < 65536)
            {
                using (MemoryStream ms = ExportDT(dtSource, strHeaderText))
                {
                    using (FileStream fs = new FileStream(strFileName, FileMode.Create, FileAccess.Write))
                    {
                        byte[] data = ms.ToArray();
                        fs.Write(data, 0, data.Length);
                        fs.Flush();
                    }
                }
            }
            else
            {
                if (temp[temp.Length - 1] == "xls")
                    strFileName = strFileName + "x";

                using (FileStream fs = new FileStream(strFileName, FileMode.Create, FileAccess.Write))
                {
                    ExportDTI(dtSource, strHeaderText, fs);

                }

            }
        }
        #endregion

        #region 从excel中将数据导出到datatable
        /// <summary>
        /// 读取excel
        /// 默认第一行为标头
        /// </summary>
        /// <param name="strFileName">excel文档路径</param>
        /// <returns>DataTable.</returns>
        public static DataTable ImportExceltoDt(string strFileName)
        {
            DataTable dt = new DataTable();
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            ISheet sheet = wb.GetSheetAt(0);
            dt = ImportDt(sheet, 0, true);
            return dt;
        }



        /// <summary>
        /// 导入表头数据
        /// </summary>
        /// <param name="strFileName">Name of the string file.</param>
        /// <returns>DataTable.</returns>
        public Hashtable ImportExceltoDtNew(string strFileName, ArrayList ReadWorkbook, string HeaderTable, DataTable ErrorTable)
        {
            DataTable dt = new DataTable();
            Hashtable htable = new Hashtable();
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            //获取因此表头属性
            ISheet sheet = wb.GetSheet(HeaderTable);
            //获取数据列
            List<CustomEntity> outputlist = new List<CustomEntity>();
           
            Hashtable f = ImportDtColumns(sheet, 0, true, ref outputlist);
            foreach (var VARIABLE in ReadWorkbook)
            {


                ISheet sheet2 = wb.GetSheet(VARIABLE.ToString());
                htable = ImportDt(sheet2, 0, true, dt, f, outputlist, out ErrorTable);
            }
            return htable;
        }
        /// <summary>
        /// 读取excel
        /// </summary>
        /// <param name="strFileName">excel文件路径</param>
        /// <param name="SheetName">Name of the sheet.</param>
        /// <param name="HeaderRowIndex">列头所在行号，-1表示没有列头</param>
        /// <returns>DataTable.</returns>
        public static DataTable ImportExceltoDt(string strFileName, string SheetName, int HeaderRowIndex)
        {
            HSSFWorkbook workbook;
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            ISheet sheet = wb.GetSheet(SheetName);
            DataTable table = new DataTable();
            table = ImportDt(sheet, HeaderRowIndex, true);
            //ExcelFileStream.Close();
            workbook = null;
            sheet = null;
            return table;
        }

        /// <summary>
        /// 读取excel
        /// </summary>
        /// <param name="strFileName">excel文件路径</param>
        /// <param name="SheetIndex">Index of the sheet.</param>
        /// <param name="HeaderRowIndex">列头所在行号，-1表示没有列头</param>
        /// <returns>DataTable.</returns>
        public static DataTable ImportExceltoDt(string strFileName, int SheetIndex, int HeaderRowIndex)
        {
            HSSFWorkbook workbook;
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            ISheet isheet = wb.GetSheetAt(SheetIndex);
            DataTable table = new DataTable();
            table = ImportDt(isheet, HeaderRowIndex, true);
            //ExcelFileStream.Close();
            workbook = null;
            isheet = null;
            return table;
        }

        /// <summary>
        /// 读取excel
        /// </summary>
        /// <param name="strFileName">excel文件路径</param>
        /// <param name="SheetName">Name of the sheet.</param>
        /// <param name="HeaderRowIndex">列头所在行号，-1表示没有列头</param>
        /// <param name="needHeader">if set to <c>true</c> [need header].</param>
        /// <returns>DataTable.</returns>
        public static DataTable ImportExceltoDt(string strFileName, string SheetName, int HeaderRowIndex, bool needHeader)
        {
            HSSFWorkbook workbook;
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            ISheet sheet = wb.GetSheet(SheetName);
            DataTable table = new DataTable();
            table = ImportDt(sheet, HeaderRowIndex, needHeader);
            //ExcelFileStream.Close();
            workbook = null;
            sheet = null;
            return table;
        }

        /// <summary>
        /// 读取excel
        /// </summary>
        /// <param name="strFileName">excel文件路径</param>
        /// <param name="SheetIndex">Index of the sheet.</param>
        /// <param name="HeaderRowIndex">列头所在行号，-1表示没有列头</param>
        /// <param name="needHeader">if set to <c>true</c> [need header].</param>
        /// <returns>DataTable.</returns>
        public static DataTable ImportExceltoDt(string strFileName, int SheetIndex, int HeaderRowIndex, bool needHeader)
        {
            HSSFWorkbook workbook;
            IWorkbook wb;
            using (FileStream file = new FileStream(strFileName, FileMode.Open, FileAccess.Read))
            {
                wb = WorkbookFactory.Create(file);
            }
            ISheet sheet = wb.GetSheetAt(SheetIndex);
            DataTable table = new DataTable();
            table = ImportDt(sheet, HeaderRowIndex, needHeader);
            //ExcelFileStream.Close();
            workbook = null;
            sheet = null;
            return table;
        }



        private static Hashtable ImportDt(ISheet sheet, int HeaderRowIndex, bool needHeader, DataTable dt, Hashtable hashtable, List<CustomEntity> outputlist, out DataTable Etable)
        {
            int rowCount = sheet.LastRowNum;
            DataTable inTable = new DataTable();
            DataTable ExceptionTable=new DataTable();
            for (int i = (HeaderRowIndex + 1); i <= sheet.LastRowNum; i++)
            {
                try
                {
                    IRow row;
                    if (sheet.GetRow(i) == null)
                    {
                        row = sheet.CreateRow(i);
                    }
                    else
                    {
                        row = sheet.GetRow(i);
                    }

                    DataRow dataRow = null;
                    int time = 0;
                    bool flage = false;
                    for (int j = 0; j < outputlist.Count; j++)
                    {
                        
                        try
                        {

                            CustomEntity cemodle = outputlist[j];
                            if (inTable.TableName != cemodle.Fromtable)
                            {



                                if (hashtable.ContainsKey(cemodle.Fromtable))
                                {
                                    if (dataRow != null)
                                    {
                                        inTable.Rows.Add(dataRow);
                                    }
                                    inTable = hashtable[cemodle.Fromtable] as DataTable;
                                    inTable.TableName = cemodle.Fromtable;
                                    dataRow = inTable.NewRow();
                                    time = 0;
                                }
                            }
                            else
                            {
                                if (j == row.FirstCellNum)
                                {
                                    inTable = hashtable[cemodle.Fromtable] as DataTable;
                                  dataRow = inTable.NewRow();
                                }
                            }
                            #region

                            if (row.GetCell(j) != null)
                            {
                                switch (row.GetCell(j).CellType)
                                {
                                    case CellType.String:
                                        string str = row.GetCell(j).StringCellValue;
                                        if (str != null && str.Length > 0)
                                        {
                                            if (cemodle.Uniqueness.Equals(IsUniqueness.Theonly.ToString()))
                                            {

                                                if (OnCheakTheonlyEvent != null)
                                                {
                                                    OnCheakTheonlyEvent(i.ToString(), str, j.ToString(),
                                                        cemodle.Fromtable, ExceptionTable, ref flage);
                                                }

                                            }

                                            else if (cemodle.Uniqueness.Equals(IsUniqueness.Timetype.ToString()))
                                            {

                                                if (OnCheakTimetypeEvent != null)
                                                {
                                                    OnCheakTimetypeEvent(i.ToString(), str, j.ToString(),
                                                        cemodle.Fromtable, ExceptionTable, ref flage);
                                                }

                                            }
                                            else if (cemodle.Uniqueness.Equals(IsUniqueness.digital.ToString()))
                                            {

                                                if (OnCheakdigitalEvent != null)
                                                {
                                                    OnCheakdigitalEvent(i.ToString(), str, j.ToString(),
                                                        cemodle.Fromtable, ExceptionTable, ref flage);
                                                }

                                            }
                                            else if (cemodle.Uniqueness.Equals(IsUniqueness.empty.ToString()))
                                            {

                                                if (OnCheakemptyEvent != null)
                                                {
                                                    OnCheakemptyEvent(i.ToString(), str, j.ToString(), cemodle.Fromtable,
                                                        ExceptionTable, ref flage);
                                                }

                                            }

                                            if (flage)
                                            {
                                                break;
                                            }
                                            else
                                            {
                                                dataRow[time] = str.ToString();
                                            }

                                        }
                                        else
                                        {
                                            dataRow[time] = null;
                                        }
                                        break;
                                    case CellType.Numeric:
                                        if (DateUtil.IsCellDateFormatted(row.GetCell(j)))
                                        {
                                            dataRow[time] = DateTime.FromOADate(row.GetCell(j).NumericCellValue);
                                        }
                                        else
                                        {
                                            dataRow[time] = Convert.ToDouble(row.GetCell(j).NumericCellValue);
                                        }
                                        break;
                                    case CellType.Boolean:
                                        dataRow[time] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                        break;
                                    case CellType.Error:
                                        dataRow[time] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                        break;
                                    case CellType.Formula:
                                        switch (row.GetCell(j).CachedFormulaResultType)
                                        {
                                            case CellType.String:
                                                string strFORMULA = row.GetCell(j).StringCellValue;
                                                if (strFORMULA != null && strFORMULA.Length > 0)
                                                {
                                                    //  dataRow[time] = strFORMULA.ToString();
                                                    if (cemodle.Uniqueness.Equals(IsUniqueness.Theonly.ToString()))
                                                    {

                                                        if (OnCheakTheonlyEvent != null)
                                                        {
                                                            OnCheakTheonlyEvent(i.ToString(), strFORMULA, j.ToString(),
                                                                cemodle.Fromtable, ExceptionTable, ref flage);
                                                        }

                                                    }

                                                    else if (cemodle.Uniqueness.Equals(IsUniqueness.Timetype.ToString()))
                                                    {

                                                        if (OnCheakTimetypeEvent != null)
                                                        {
                                                            OnCheakTimetypeEvent(i.ToString(), strFORMULA,
                                                                j.ToString(), cemodle.Fromtable, ExceptionTable,
                                                                ref flage);
                                                        }

                                                    }
                                                    else if (
                                                        cemodle.Uniqueness.Equals(
                                                            IsUniqueness.digital.ToString()))
                                                    {

                                                        if (OnCheakdigitalEvent != null)
                                                        {
                                                            OnCheakdigitalEvent(i.ToString(), strFORMULA,
                                                                j.ToString(), cemodle.Fromtable, ExceptionTable,
                                                                ref flage);
                                                        }

                                                    }
                                                    else if (
                                                        cemodle.Uniqueness.Equals(
                                                            IsUniqueness.empty.ToString()))
                                                    {

                                                        if (OnCheakemptyEvent != null)
                                                        {
                                                            OnCheakemptyEvent(i.ToString(), strFORMULA,
                                                                j.ToString(), cemodle.Fromtable,
                                                                ExceptionTable, ref flage);
                                                        }

                                                    }

                                                    if (flage)
                                                    {
                                                        break;
                                                    }
                                                    else
                                                    {
                                                        dataRow[time] = strFORMULA.ToString();
                                                    }
                                                }
                                                else
                                                {
                                                    dataRow[time] = null;
                                                }
                                                break;
                                            case CellType.Numeric:
                                                dataRow[time] = Convert.ToString(row.GetCell(j).NumericCellValue);
                                                break;
                                            case CellType.Boolean:
                                                dataRow[time] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                                break;
                                            case CellType.Error:
                                                dataRow[time] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                                break;
                                            default:
                                                dataRow[time] = "";
                                                break;
                                        }
                                        break;
                                    default:
                                        dataRow[time] = "";
                                        break;
                                }
                                time++;
                            }
                            else
                            {
                                dataRow[time] = "";
                                time++;
                            }

                            #endregion



                        }
                        catch (Exception exception)
                        {
                            wl.WriteLogs(exception.ToString());
                            continue;
                        }
                        if (flage)
                        {
                            break;
                        }
                    }

                    if (!flage)
                    {
                        inTable.Rows.Add(dataRow); 
                    }
                    

                }
                catch (Exception exception)
                {
                    wl.WriteLogs(exception.ToString());
                    continue;
                }
            }
            Etable = ExceptionTable;
            return hashtable;
        }

        static Hashtable ImportDtColumns(ISheet sheet, int HeaderRowIndex, bool needHeader, ref List<CustomEntity> outputlist)
        {

            IRow headerRow;
            int cellCount;
            DataTable dt = new DataTable();
            headerRow = sheet.GetRow(HeaderRowIndex);
            cellCount = headerRow.LastCellNum;
            //  List<CustomEntity> fdsffdsfsdfasdf = new List<CustomEntity>();
            Hashtable hashtable = new Hashtable();
            for (int i = headerRow.FirstCellNum; i < cellCount; i++)
            {
                Dictionary<string, List<CustomEntity>> sequenceL = new Dictionary<string, List<CustomEntity>>();
                if (headerRow.GetCell(i) == null)
                {


                }

                else
                {
                    sequenceL = JsonConvert.DeserializeObject<Dictionary<string, List<CustomEntity>>>(headerRow.GetCell(i).ToString());
                    foreach (KeyValuePair<string, List<CustomEntity>> kvp in sequenceL)
                    {


                        string downTableName = kvp.Value[0].Fromtable;
                        DataTable inTable = null;
                        if (hashtable.ContainsKey(downTableName))
                        {
                            inTable = hashtable[downTableName] as DataTable;
                        }
                        else
                        {
                            inTable = new DataTable();
                            hashtable[downTableName] = inTable;
                        }
                        DataColumn column = new DataColumn(kvp.Value[0].Fieldname);
                        if (inTable != null)
                        {
                            inTable.Columns.Add(column);
                        }
                        //sequence.Add( kvp.Key , kvp.Value);
                        outputlist.Add(kvp.Value[0]);
                    }


                }
            }
            return hashtable;
        }


        static DataTable ImportDtColumns(ISheet sheet, int HeaderRowIndex, bool needHeader)
        {
            DataTable table = new DataTable();
            IRow headerRow;
            int cellCount;
            headerRow = sheet.GetRow(HeaderRowIndex);
            cellCount = headerRow.LastCellNum;

            for (int i = headerRow.FirstCellNum; i < cellCount; i++)
            {
                 
                                // DateTime.FromOADate(headerRow.GetCell(i).NumericCellValue);
                                DataColumn column2 = new DataColumn(headerRow.GetCell(i).ToString());
                                table.Columns.Add(column2);
                   
                
            }
            return table;
        }



        private static DataTable WEBImportDt(ISheet sheet, int HeaderRowIndex, bool needHeader, DataTable dt)
        {
            int rowCount = sheet.LastRowNum;
            for (int i = (HeaderRowIndex + 1); i <= sheet.LastRowNum; i++)
            {
                try
                {
                    IRow row;
                    if (sheet.GetRow(i) == null)
                    {
                        row = sheet.CreateRow(i);
                    }
                    else
                    {
                        row = sheet.GetRow(i);
                    }

                    DataRow dataRow = dt.NewRow();

                    for (int j = row.FirstCellNum; j < dt.Columns.Count; j++)
                    {
                        try
                        {
                            if (row.GetCell(j) != null)
                            {
                                switch (row.GetCell(j).CellType)
                                {
                                    case CellType.String:
                                        string str = row.GetCell(j).StringCellValue;
                                        if (str != null && str.Length > 0)
                                        {
                                            dataRow[j] = str.ToString();
                                        }
                                        else
                                        {
                                            dataRow[j] = null;
                                        }
                                        break;
                                    case CellType.Numeric:
                                        if (DateUtil.IsCellDateFormatted(row.GetCell(j)))
                                        {
                                            dataRow[j] = DateTime.FromOADate(row.GetCell(j).NumericCellValue);
                                        }
                                        else
                                        {
                                            dataRow[j] = Convert.ToDouble(row.GetCell(j).NumericCellValue);
                                        }
                                        break;
                                    case CellType.Boolean:
                                        dataRow[j] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                        break;
                                    case CellType.Error:
                                        dataRow[j] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                        break;
                                    case CellType.Formula:
                                        switch (row.GetCell(j).CachedFormulaResultType)
                                        {
                                            case CellType.String:
                                                string strFORMULA = row.GetCell(j).StringCellValue;
                                                if (strFORMULA != null && strFORMULA.Length > 0)
                                                {
                                                    dataRow[j] = strFORMULA.ToString();
                                                }
                                                else
                                                {
                                                    dataRow[j] = null;
                                                }
                                                break;
                                            case CellType.Numeric:
                                                dataRow[j] = Convert.ToString(row.GetCell(j).NumericCellValue);
                                                break;
                                            case CellType.Boolean:
                                                dataRow[j] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                                break;
                                            case CellType.Error:
                                                dataRow[j] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                                break;
                                            default:
                                                dataRow[j] = "";
                                                break;
                                        }
                                        break;
                                    default:
                                        dataRow[j] = "";
                                        break;
                                }
                            }
                        }
                        catch (Exception exception)
                        {
                            wl.WriteLogs(exception.ToString());
                        }
                    }
                    dt.Rows.Add(dataRow);
                }
                catch (Exception exception)
                {
                    wl.WriteLogs(exception.ToString());
                }
            }
            return dt;
        }
        /// <summary>
        /// 将制定sheet中的数据导出到datatable中
        /// </summary>
        /// <param name="sheet">需要导出的sheet</param>
        /// <param name="HeaderRowIndex">列头所在行号，-1表示没有列头</param>
        /// <param name="needHeader">if set to <c>true</c> [need header].</param>
        /// <returns>DataTable.</returns>
        static DataTable ImportDt(ISheet sheet, int HeaderRowIndex, bool needHeader)
        {
            DataTable table = new DataTable();
            IRow headerRow;
            int cellCount;
            try
            {
                if (HeaderRowIndex < 0 || !needHeader)
                {
                    headerRow = sheet.GetRow(0);
                    cellCount = headerRow.LastCellNum;

                    for (int i = headerRow.FirstCellNum; i <= cellCount; i++)
                    {
                        DataColumn column = new DataColumn(Convert.ToString(i));
                        table.Columns.Add(column);
                    }
                }
                else
                {
                    headerRow = sheet.GetRow(HeaderRowIndex);
                    cellCount = headerRow.LastCellNum;

                    for (int i = headerRow.FirstCellNum; i <= cellCount; i++)
                    {
                        if (headerRow.GetCell(i) == null)
                        {
                            if (table.Columns.IndexOf(Convert.ToString(i)) > 0)
                            {
                                DataColumn column = new DataColumn(Convert.ToString("重复列名" + i));
                                table.Columns.Add(column);
                            }
                            else
                            {
                                DataColumn column = new DataColumn(Convert.ToString(i));
                                table.Columns.Add(column);
                            }

                        }
                        else if (table.Columns.IndexOf(headerRow.GetCell(i).ToString()) > 0)
                        {
                            DataColumn column = new DataColumn(Convert.ToString("重复列名" + i));
                            table.Columns.Add(column);
                        }
                        else
                        {
                            DataColumn column = new DataColumn(headerRow.GetCell(i).ToString());
                            table.Columns.Add(column);
                        }
                    }
                }
                int rowCount = sheet.LastRowNum;
                for (int i = (HeaderRowIndex + 1); i <= sheet.LastRowNum; i++)
                {
                    try
                    {
                        IRow row;
                        if (sheet.GetRow(i) == null)
                        {
                            row = sheet.CreateRow(i);
                        }
                        else
                        {
                            row = sheet.GetRow(i);
                        }

                        DataRow dataRow = table.NewRow();

                        for (int j = row.FirstCellNum; j <= cellCount; j++)
                        {
                            try
                            {
                                if (row.GetCell(j) != null)
                                {
                                    switch (row.GetCell(j).CellType)
                                    {
                                        case CellType.String:
                                            string str = row.GetCell(j).StringCellValue;
                                            if (str != null && str.Length > 0)
                                            {
                                                dataRow[j] = str.ToString();
                                            }
                                            else
                                            {
                                                dataRow[j] = null;
                                            }
                                            break;
                                        case CellType.Numeric:
                                            if (DateUtil.IsCellDateFormatted(row.GetCell(j)))
                                            {
                                                dataRow[j] = DateTime.FromOADate(row.GetCell(j).NumericCellValue);
                                            }
                                            else
                                            {
                                                dataRow[j] = Convert.ToDouble(row.GetCell(j).NumericCellValue);
                                            }
                                            break;
                                        case CellType.Boolean:
                                            dataRow[j] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                            break;
                                        case CellType.Error:
                                            dataRow[j] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                            break;
                                        case CellType.Formula:
                                            switch (row.GetCell(j).CachedFormulaResultType)
                                            {
                                                case CellType.String:
                                                    string strFORMULA = row.GetCell(j).StringCellValue;
                                                    if (strFORMULA != null && strFORMULA.Length > 0)
                                                    {
                                                        dataRow[j] = strFORMULA.ToString();
                                                    }
                                                    else
                                                    {
                                                        dataRow[j] = null;
                                                    }
                                                    break;
                                                case CellType.Numeric:
                                                    dataRow[j] = Convert.ToString(row.GetCell(j).NumericCellValue);
                                                    break;
                                                case CellType.Boolean:
                                                    dataRow[j] = Convert.ToString(row.GetCell(j).BooleanCellValue);
                                                    break;
                                                case CellType.Error:
                                                    dataRow[j] = ErrorEval.GetText(row.GetCell(j).ErrorCellValue);
                                                    break;
                                                default:
                                                    dataRow[j] = "";
                                                    break;
                                            }
                                            break;
                                        default:
                                            dataRow[j] = "";
                                            break;
                                    }
                                }
                            }
                            catch (Exception exception)
                            {
                                wl.WriteLogs(exception.ToString());
                            }
                        }
                        table.Rows.Add(dataRow);
                    }
                    catch (Exception exception)
                    {
                        wl.WriteLogs(exception.ToString());
                    }
                }
            }
            catch (Exception exception)
            {
                wl.WriteLogs(exception.ToString());
            }
            return table;
        }

        #endregion


        /// <summary>
        /// Inserts the sheet.
        /// </summary>
        /// <param name="outputFile">The output file.</param>
        /// <param name="sheetname">The sheetname.</param>
        /// <param name="dt">The dt.</param>
        public static void InsertSheet(string outputFile, string sheetname, DataTable dt)
        {
            FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);
            IWorkbook hssfworkbook = WorkbookFactory.Create(readfile);
            //HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
            int num = hssfworkbook.GetSheetIndex(sheetname);
            ISheet sheet1;
            if (num >= 0)
                sheet1 = hssfworkbook.GetSheet(sheetname);
            else
            {
                sheet1 = hssfworkbook.CreateSheet(sheetname);
            }


            try
            {
                if (sheet1.GetRow(0) == null)
                {
                    sheet1.CreateRow(0);
                }
                for (int coluid = 0; coluid < dt.Columns.Count; coluid++)
                {
                    if (sheet1.GetRow(0).GetCell(coluid) == null)
                    {
                        sheet1.GetRow(0).CreateCell(coluid);
                    }

                    sheet1.GetRow(0).GetCell(coluid).SetCellValue(dt.Columns[coluid].ColumnName);
                }
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
                throw;
            }


            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                try
                {
                    if (sheet1.GetRow(i) == null)
                    {
                        sheet1.CreateRow(i);
                    }
                    for (int coluid = 0; coluid < dt.Columns.Count; coluid++)
                    {
                        if (sheet1.GetRow(i).GetCell(coluid) == null)
                        {
                            sheet1.GetRow(i).CreateCell(coluid);
                        }

                        sheet1.GetRow(i).GetCell(coluid).SetCellValue(dt.Rows[i - 1][coluid].ToString());
                    }
                }
                catch (Exception ex)
                {
                    wl.WriteLogs(ex.ToString());
                    //throw;
                }
            }
            try
            {
                readfile.Close();

                FileStream writefile = new FileStream(outputFile, FileMode.OpenOrCreate, FileAccess.Write);
                hssfworkbook.Write(writefile);
                writefile.Close();
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
            }
        }

        #region 更新excel中的数据
        /// <summary>
        /// 更新Excel表格
        /// </summary>
        /// <param name="outputFile">需更新的excel表格路径</param>
        /// <param name="sheetname">sheet名</param>
        /// <param name="updateData">需更新的数据</param>
        /// <param name="coluid">需更新的列号</param>
        /// <param name="rowid">需更新的开始行号</param>
        public static void UpdateExcel(string outputFile, string sheetname, string[] updateData, int coluid, int rowid)
        {
            //FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);
            IWorkbook hssfworkbook = WorkbookFactory.Create(outputFile);
            //HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
            ISheet sheet1 = hssfworkbook.GetSheet(sheetname);
            for (int i = 0; i < updateData.Length; i++)
            {
                try
                {
                    if (sheet1.GetRow(i + rowid) == null)
                    {
                        sheet1.CreateRow(i + rowid);
                    }
                    if (sheet1.GetRow(i + rowid).GetCell(coluid) == null)
                    {
                        sheet1.GetRow(i + rowid).CreateCell(coluid);
                    }

                    sheet1.GetRow(i + rowid).GetCell(coluid).SetCellValue(updateData[i]);
                }
                catch (Exception ex)
                {
                    wl.WriteLogs(ex.ToString());
                    throw;
                }
            }
            try
            {
                //readfile.Close();
                FileStream writefile = new FileStream(outputFile, FileMode.OpenOrCreate, FileAccess.Write);
                hssfworkbook.Write(writefile);
                writefile.Close();
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
            }

        }

        /// <summary>
        /// 更新Excel表格
        /// </summary>
        /// <param name="outputFile">需更新的excel表格路径</param>
        /// <param name="sheetname">sheet名</param>
        /// <param name="updateData">需更新的数据</param>
        /// <param name="coluids">需更新的列号</param>
        /// <param name="rowid">需更新的开始行号</param>
        public static void UpdateExcel(string outputFile, string sheetname, string[][] updateData, int[] coluids, int rowid)
        {
            FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);

            HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
            readfile.Close();
            ISheet sheet1 = hssfworkbook.GetSheet(sheetname);
            for (int j = 0; j < coluids.Length; j++)
            {
                for (int i = 0; i < updateData[j].Length; i++)
                {
                    try
                    {
                        if (sheet1.GetRow(i + rowid) == null)
                        {
                            sheet1.CreateRow(i + rowid);
                        }
                        if (sheet1.GetRow(i + rowid).GetCell(coluids[j]) == null)
                        {
                            sheet1.GetRow(i + rowid).CreateCell(coluids[j]);
                        }
                        sheet1.GetRow(i + rowid).GetCell(coluids[j]).SetCellValue(updateData[j][i]);
                    }
                    catch (Exception ex)
                    {
                        wl.WriteLogs(ex.ToString());
                    }
                }
            }
            try
            {
                FileStream writefile = new FileStream(outputFile, FileMode.Create);
                hssfworkbook.Write(writefile);
                writefile.Close();
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
            }
        }

        /// <summary>
        /// 更新Excel表格
        /// </summary>
        /// <param name="outputFile">需更新的excel表格路径</param>
        /// <param name="sheetname">sheet名</param>
        /// <param name="updateData">需更新的数据</param>
        /// <param name="coluid">需更新的列号</param>
        /// <param name="rowid">需更新的开始行号</param>
        public static void UpdateExcel(string outputFile, string sheetname, double[] updateData, int coluid, int rowid)
        {
            FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);

            HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
            ISheet sheet1 = hssfworkbook.GetSheet(sheetname);
            for (int i = 0; i < updateData.Length; i++)
            {
                try
                {
                    if (sheet1.GetRow(i + rowid) == null)
                    {
                        sheet1.CreateRow(i + rowid);
                    }
                    if (sheet1.GetRow(i + rowid).GetCell(coluid) == null)
                    {
                        sheet1.GetRow(i + rowid).CreateCell(coluid);
                    }

                    sheet1.GetRow(i + rowid).GetCell(coluid).SetCellValue(updateData[i]);
                }
                catch (Exception ex)
                {
                    wl.WriteLogs(ex.ToString());
                    throw;
                }
            }
            try
            {
                readfile.Close();
                FileStream writefile = new FileStream(outputFile, FileMode.Create, FileAccess.Write);
                hssfworkbook.Write(writefile);
                writefile.Close();
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
            }

        }

        /// <summary>
        /// 更新Excel表格
        /// </summary>
        /// <param name="outputFile">需更新的excel表格路径</param>
        /// <param name="sheetname">sheet名</param>
        /// <param name="updateData">需更新的数据</param>
        /// <param name="coluids">需更新的列号</param>
        /// <param name="rowid">需更新的开始行号</param>
        public static void UpdateExcel(string outputFile, string sheetname, double[][] updateData, int[] coluids, int rowid)
        {
            FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);

            HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
            readfile.Close();
            ISheet sheet1 = hssfworkbook.GetSheet(sheetname);
            for (int j = 0; j < coluids.Length; j++)
            {
                for (int i = 0; i < updateData[j].Length; i++)
                {
                    try
                    {
                        if (sheet1.GetRow(i + rowid) == null)
                        {
                            sheet1.CreateRow(i + rowid);
                        }
                        if (sheet1.GetRow(i + rowid).GetCell(coluids[j]) == null)
                        {
                            sheet1.GetRow(i + rowid).CreateCell(coluids[j]);
                        }
                        sheet1.GetRow(i + rowid).GetCell(coluids[j]).SetCellValue(updateData[j][i]);
                    }
                    catch (Exception ex)
                    {
                        wl.WriteLogs(ex.ToString());
                    }
                }
            }
            try
            {
                FileStream writefile = new FileStream(outputFile, FileMode.Create);
                hssfworkbook.Write(writefile);
                writefile.Close();
            }
            catch (Exception ex)
            {
                wl.WriteLogs(ex.ToString());
            }
        }

        #endregion

        /// <summary>
        /// Gets the sheet number.
        /// </summary>
        /// <param name="outputFile">The output file.</param>
        /// <returns>System.Int32.</returns>
        public static int GetSheetNumber(string outputFile)
        {
            int number = 0;
            try
            {
                FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);

                HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
                number = hssfworkbook.NumberOfSheets;

            }
            catch (Exception exception)
            {
                wl.WriteLogs(exception.ToString());
            }
            return number;
        }

        /// <summary>
        /// Gets the name of the sheet.
        /// </summary>
        /// <param name="outputFile">The output file.</param>
        /// <returns>ArrayList.</returns>
        public static ArrayList GetSheetName(string outputFile)
        {
            ArrayList arrayList = new ArrayList();
            try
            {
                FileStream readfile = new FileStream(outputFile, FileMode.Open, FileAccess.Read);

                HSSFWorkbook hssfworkbook = new HSSFWorkbook(readfile);
                for (int i = 0; i < hssfworkbook.NumberOfSheets; i++)
                {
                    arrayList.Add(hssfworkbook.GetSheetName(i));
                }
            }
            catch (Exception exception)
            {
                wl.WriteLogs(exception.ToString());
            }
            return arrayList;
        }

        /// <summary>
        /// Determines whether the specified message is numeric.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <param name="result">The result.</param>
        /// <returns><c>true</c> if the specified message is numeric; otherwise, <c>false</c>.</returns>
        public static bool isNumeric(String message, out double result)
        {
            Regex rex = new Regex(@"^[-]?\d+[.]?\d*$");
            result = -1;
            if (rex.IsMatch(message))
            {
                result = double.Parse(message);
                return true;
            }
            else
                return false;

        }
    }
}