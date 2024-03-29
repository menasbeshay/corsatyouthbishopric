
/*
'===============================================================================
'  Generated From - CSharp_dOOdads_BusinessEntity.vbgen
' 
'  ** IMPORTANT  ** 
'  How to Generate your stored procedures:
' 
'  SQL        = SQL_StoredProcs.vbgen
'  ACCESS     = Access_StoredProcs.vbgen
'  ORACLE     = Oracle_StoredProcs.vbgen
'  FIREBIRD   = FirebirdStoredProcs.vbgen
'  POSTGRESQL = PostgreSQL_StoredProcs.vbgen
'
'  The supporting base class SqlClientEntity is in the Architecture directory in "dOOdads".
'  
'  This object is 'abstract' which means you need to inherit from it to be able
'  to instantiate it.  This is very easilly done. You can override properties and
'  methods in your derived class, this allows you to regenerate this class at any
'  time and not worry about overwriting custom code. 
'
'  NEVER EDIT THIS FILE.
'
'  public class YourObject :  _YourObject
'  {
'
'  }
'
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace Corsat.DAL
{
	public abstract class _Course_Data : SqlClientEntity
	{
		public _Course_Data()
		{
			this.QuerySource = "Course_Data";
			this.MappingName = "Course_Data";

		}	

		//=================================================================
		//  public Overrides void AddNew()
		//=================================================================
		//
		//=================================================================
		public override void AddNew()
		{
			base.AddNew();
			
		}
		
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
		
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			ListDictionary parameters = null;
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_Course_DataLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int DataID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.DataID, DataID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_Course_DataLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter DataID
			{
				get
				{
					return new SqlParameter("@DataID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter DataTypeID
			{
				get
				{
					return new SqlParameter("@DataTypeID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CourseID
			{
				get
				{
					return new SqlParameter("@CourseID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter DataName
			{
				get
				{
					return new SqlParameter("@DataName", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter Data_Date
			{
				get
				{
					return new SqlParameter("@Data_Date", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter Data_Path
			{
				get
				{
					return new SqlParameter("@Data_Path", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter ThumbsPath
			{
				get
				{
					return new SqlParameter("@ThumbsPath", SqlDbType.NVarChar, 200);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string DataID = "DataID";
            public const string DataTypeID = "DataTypeID";
            public const string CourseID = "CourseID";
            public const string DataName = "DataName";
            public const string Data_Date = "Data_Date";
            public const string Data_Path = "Data_Path";
            public const string ThumbsPath = "ThumbsPath";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DataID] = _Course_Data.PropertyNames.DataID;
					ht[DataTypeID] = _Course_Data.PropertyNames.DataTypeID;
					ht[CourseID] = _Course_Data.PropertyNames.CourseID;
					ht[DataName] = _Course_Data.PropertyNames.DataName;
					ht[Data_Date] = _Course_Data.PropertyNames.Data_Date;
					ht[Data_Path] = _Course_Data.PropertyNames.Data_Path;
					ht[ThumbsPath] = _Course_Data.PropertyNames.ThumbsPath;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string DataID = "DataID";
            public const string DataTypeID = "DataTypeID";
            public const string CourseID = "CourseID";
            public const string DataName = "DataName";
            public const string Data_Date = "Data_Date";
            public const string Data_Path = "Data_Path";
            public const string ThumbsPath = "ThumbsPath";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DataID] = _Course_Data.ColumnNames.DataID;
					ht[DataTypeID] = _Course_Data.ColumnNames.DataTypeID;
					ht[CourseID] = _Course_Data.ColumnNames.CourseID;
					ht[DataName] = _Course_Data.ColumnNames.DataName;
					ht[Data_Date] = _Course_Data.ColumnNames.Data_Date;
					ht[Data_Path] = _Course_Data.ColumnNames.Data_Path;
					ht[ThumbsPath] = _Course_Data.ColumnNames.ThumbsPath;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string DataID = "s_DataID";
            public const string DataTypeID = "s_DataTypeID";
            public const string CourseID = "s_CourseID";
            public const string DataName = "s_DataName";
            public const string Data_Date = "s_Data_Date";
            public const string Data_Path = "s_Data_Path";
            public const string ThumbsPath = "s_ThumbsPath";

		}
		#endregion		
		
		#region Properties
	
		public virtual int DataID
	    {
			get
	        {
				return base.Getint(ColumnNames.DataID);
			}
			set
	        {
				base.Setint(ColumnNames.DataID, value);
			}
		}

		public virtual int DataTypeID
	    {
			get
	        {
				return base.Getint(ColumnNames.DataTypeID);
			}
			set
	        {
				base.Setint(ColumnNames.DataTypeID, value);
			}
		}

		public virtual int CourseID
	    {
			get
	        {
				return base.Getint(ColumnNames.CourseID);
			}
			set
	        {
				base.Setint(ColumnNames.CourseID, value);
			}
		}

		public virtual string DataName
	    {
			get
	        {
				return base.Getstring(ColumnNames.DataName);
			}
			set
	        {
				base.Setstring(ColumnNames.DataName, value);
			}
		}

		public virtual DateTime Data_Date
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.Data_Date);
			}
			set
	        {
				base.SetDateTime(ColumnNames.Data_Date, value);
			}
		}

		public virtual string Data_Path
	    {
			get
	        {
				return base.Getstring(ColumnNames.Data_Path);
			}
			set
	        {
				base.Setstring(ColumnNames.Data_Path, value);
			}
		}

		public virtual string ThumbsPath
	    {
			get
	        {
				return base.Getstring(ColumnNames.ThumbsPath);
			}
			set
	        {
				base.Setstring(ColumnNames.ThumbsPath, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_DataID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DataID) ? string.Empty : base.GetintAsString(ColumnNames.DataID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DataID);
				else
					this.DataID = base.SetintAsString(ColumnNames.DataID, value);
			}
		}

		public virtual string s_DataTypeID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DataTypeID) ? string.Empty : base.GetintAsString(ColumnNames.DataTypeID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DataTypeID);
				else
					this.DataTypeID = base.SetintAsString(ColumnNames.DataTypeID, value);
			}
		}

		public virtual string s_CourseID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseID) ? string.Empty : base.GetintAsString(ColumnNames.CourseID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseID);
				else
					this.CourseID = base.SetintAsString(ColumnNames.CourseID, value);
			}
		}

		public virtual string s_DataName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DataName) ? string.Empty : base.GetstringAsString(ColumnNames.DataName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DataName);
				else
					this.DataName = base.SetstringAsString(ColumnNames.DataName, value);
			}
		}

		public virtual string s_Data_Date
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Data_Date) ? string.Empty : base.GetDateTimeAsString(ColumnNames.Data_Date);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Data_Date);
				else
					this.Data_Date = base.SetDateTimeAsString(ColumnNames.Data_Date, value);
			}
		}

		public virtual string s_Data_Path
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Data_Path) ? string.Empty : base.GetstringAsString(ColumnNames.Data_Path);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Data_Path);
				else
					this.Data_Path = base.SetstringAsString(ColumnNames.Data_Path, value);
			}
		}

		public virtual string s_ThumbsPath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ThumbsPath) ? string.Empty : base.GetstringAsString(ColumnNames.ThumbsPath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ThumbsPath);
				else
					this.ThumbsPath = base.SetstringAsString(ColumnNames.ThumbsPath, value);
			}
		}


		#endregion		
	
		#region Where Clause
		public class WhereClause
		{
			public WhereClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffWhereParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffWhereParameter(this);
					}

					return _tearOff;
				}
			}

			#region WhereParameter TearOff's
			public class TearOffWhereParameter
			{
				public TearOffWhereParameter(WhereClause clause)
				{
					this._clause = clause;
				}
				
				
				public WhereParameter DataID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DataID, Parameters.DataID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DataTypeID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DataTypeID, Parameters.DataTypeID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseID, Parameters.CourseID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DataName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DataName, Parameters.DataName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Data_Date
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Data_Date, Parameters.Data_Date);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Data_Path
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Data_Path, Parameters.Data_Path);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ThumbsPath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ThumbsPath, Parameters.ThumbsPath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter DataID
		    {
				get
		        {
					if(_DataID_W == null)
	        	    {
						_DataID_W = TearOff.DataID;
					}
					return _DataID_W;
				}
			}

			public WhereParameter DataTypeID
		    {
				get
		        {
					if(_DataTypeID_W == null)
	        	    {
						_DataTypeID_W = TearOff.DataTypeID;
					}
					return _DataTypeID_W;
				}
			}

			public WhereParameter CourseID
		    {
				get
		        {
					if(_CourseID_W == null)
	        	    {
						_CourseID_W = TearOff.CourseID;
					}
					return _CourseID_W;
				}
			}

			public WhereParameter DataName
		    {
				get
		        {
					if(_DataName_W == null)
	        	    {
						_DataName_W = TearOff.DataName;
					}
					return _DataName_W;
				}
			}

			public WhereParameter Data_Date
		    {
				get
		        {
					if(_Data_Date_W == null)
	        	    {
						_Data_Date_W = TearOff.Data_Date;
					}
					return _Data_Date_W;
				}
			}

			public WhereParameter Data_Path
		    {
				get
		        {
					if(_Data_Path_W == null)
	        	    {
						_Data_Path_W = TearOff.Data_Path;
					}
					return _Data_Path_W;
				}
			}

			public WhereParameter ThumbsPath
		    {
				get
		        {
					if(_ThumbsPath_W == null)
	        	    {
						_ThumbsPath_W = TearOff.ThumbsPath;
					}
					return _ThumbsPath_W;
				}
			}

			private WhereParameter _DataID_W = null;
			private WhereParameter _DataTypeID_W = null;
			private WhereParameter _CourseID_W = null;
			private WhereParameter _DataName_W = null;
			private WhereParameter _Data_Date_W = null;
			private WhereParameter _Data_Path_W = null;
			private WhereParameter _ThumbsPath_W = null;

			public void WhereClauseReset()
			{
				_DataID_W = null;
				_DataTypeID_W = null;
				_CourseID_W = null;
				_DataName_W = null;
				_Data_Date_W = null;
				_Data_Path_W = null;
				_ThumbsPath_W = null;

				this._entity.Query.FlushWhereParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffWhereParameter _tearOff;
			
		}
	
		public WhereClause Where
		{
			get
			{
				if(_whereClause == null)
				{
					_whereClause = new WhereClause(this);
				}
		
				return _whereClause;
			}
		}
		
		private WhereClause _whereClause = null;	
		#endregion
	
		#region Aggregate Clause
		public class AggregateClause
		{
			public AggregateClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffAggregateParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffAggregateParameter(this);
					}

					return _tearOff;
				}
			}

			#region AggregateParameter TearOff's
			public class TearOffAggregateParameter
			{
				public TearOffAggregateParameter(AggregateClause clause)
				{
					this._clause = clause;
				}
				
				
				public AggregateParameter DataID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DataID, Parameters.DataID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DataTypeID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DataTypeID, Parameters.DataTypeID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseID, Parameters.CourseID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DataName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DataName, Parameters.DataName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Data_Date
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Data_Date, Parameters.Data_Date);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Data_Path
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Data_Path, Parameters.Data_Path);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ThumbsPath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ThumbsPath, Parameters.ThumbsPath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter DataID
		    {
				get
		        {
					if(_DataID_W == null)
	        	    {
						_DataID_W = TearOff.DataID;
					}
					return _DataID_W;
				}
			}

			public AggregateParameter DataTypeID
		    {
				get
		        {
					if(_DataTypeID_W == null)
	        	    {
						_DataTypeID_W = TearOff.DataTypeID;
					}
					return _DataTypeID_W;
				}
			}

			public AggregateParameter CourseID
		    {
				get
		        {
					if(_CourseID_W == null)
	        	    {
						_CourseID_W = TearOff.CourseID;
					}
					return _CourseID_W;
				}
			}

			public AggregateParameter DataName
		    {
				get
		        {
					if(_DataName_W == null)
	        	    {
						_DataName_W = TearOff.DataName;
					}
					return _DataName_W;
				}
			}

			public AggregateParameter Data_Date
		    {
				get
		        {
					if(_Data_Date_W == null)
	        	    {
						_Data_Date_W = TearOff.Data_Date;
					}
					return _Data_Date_W;
				}
			}

			public AggregateParameter Data_Path
		    {
				get
		        {
					if(_Data_Path_W == null)
	        	    {
						_Data_Path_W = TearOff.Data_Path;
					}
					return _Data_Path_W;
				}
			}

			public AggregateParameter ThumbsPath
		    {
				get
		        {
					if(_ThumbsPath_W == null)
	        	    {
						_ThumbsPath_W = TearOff.ThumbsPath;
					}
					return _ThumbsPath_W;
				}
			}

			private AggregateParameter _DataID_W = null;
			private AggregateParameter _DataTypeID_W = null;
			private AggregateParameter _CourseID_W = null;
			private AggregateParameter _DataName_W = null;
			private AggregateParameter _Data_Date_W = null;
			private AggregateParameter _Data_Path_W = null;
			private AggregateParameter _ThumbsPath_W = null;

			public void AggregateClauseReset()
			{
				_DataID_W = null;
				_DataTypeID_W = null;
				_CourseID_W = null;
				_DataName_W = null;
				_Data_Date_W = null;
				_Data_Path_W = null;
				_ThumbsPath_W = null;

				this._entity.Query.FlushAggregateParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffAggregateParameter _tearOff;
			
		}
	
		public AggregateClause Aggregate
		{
			get
			{
				if(_aggregateClause == null)
				{
					_aggregateClause = new AggregateClause(this);
				}
		
				return _aggregateClause;
			}
		}
		
		private AggregateClause _aggregateClause = null;	
		#endregion
	
		protected override IDbCommand GetInsertCommand() 
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Course_DataInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.DataID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Course_DataUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Course_DataDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.DataID);
			p.SourceColumn = ColumnNames.DataID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.DataID);
			p.SourceColumn = ColumnNames.DataID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DataTypeID);
			p.SourceColumn = ColumnNames.DataTypeID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseID);
			p.SourceColumn = ColumnNames.CourseID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DataName);
			p.SourceColumn = ColumnNames.DataName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Data_Date);
			p.SourceColumn = ColumnNames.Data_Date;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Data_Path);
			p.SourceColumn = ColumnNames.Data_Path;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ThumbsPath);
			p.SourceColumn = ColumnNames.ThumbsPath;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
