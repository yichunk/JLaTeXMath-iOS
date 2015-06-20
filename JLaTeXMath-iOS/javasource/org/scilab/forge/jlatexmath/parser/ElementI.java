package org.scilab.forge.jlatexmath.parser;

import org.scilab.forge.jlatexmath.platform.parser.Element;
import org.scilab.forge.jlatexmath.platform.parser.NamedNodeMap;
import org.scilab.forge.jlatexmath.platform.parser.NodeList;
import org.w3c.dom.Node;

public class ElementI extends NodeI implements Element {
	
	private org.w3c.dom.Element impl;
	
	public ElementI(org.w3c.dom.Element impl) {
		super((Node) impl);
		this.impl = impl;
	}

	public NodeList getElementsByTagName(String name) {
		return new NodeListI(impl.getElementsByTagName(name));
	}
	
	public String getAttribute(String name) {
		return impl.getAttribute(name);
	}
	
	public String getTagName() {
		return impl.getTagName();
	}

	public NodeList getChildNodes() {
		return new NodeListI(impl.getChildNodes());
	}

	public NamedNodeMap getAttributes() {
		return new NamedNodeMapI(impl.getAttributes());
	}
	
	public boolean isNull() {
		return impl == null;
	}
}
