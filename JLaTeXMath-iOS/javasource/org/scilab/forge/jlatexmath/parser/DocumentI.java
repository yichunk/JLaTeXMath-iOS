package org.scilab.forge.jlatexmath.parser;

import org.scilab.forge.jlatexmath.platform.parser.Document;
import org.scilab.forge.jlatexmath.platform.parser.Element;

public class DocumentI implements Document {
	
	private org.w3c.dom.Document impl;
	
	public DocumentI(org.w3c.dom.Document impl) {
		this.impl = impl;
	}

	public Element getDocumentElement() {
		return new ElementI(impl.getDocumentElement());
	}

}
