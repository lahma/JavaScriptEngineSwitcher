﻿namespace JavaScriptEngineSwitcher.Tests.Node
{
	public class Es5Tests : Es5TestsBase
	{
		protected override string EngineName
		{
			get { return "NodeJsEngine"; }
		}


		#region Object methods

		public override void SupportsObjectCreateMethod()
		{ }

		#endregion
	}
}